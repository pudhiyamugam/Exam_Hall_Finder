import 'package:flutter/material.dart';

class PathImages extends StatelessWidget {
  const PathImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Path To Exam Hall',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 130, 6, 207),
        ),
      body: Center(
        child: PathImagesclass(),
      ),
    );
  }
}

class PathImagesclass extends StatefulWidget {
  const PathImagesclass({super.key});

  @override
  State<PathImagesclass> createState() => _PathImagesclassState();
}

class _PathImagesclassState extends State<PathImagesclass> {
  final List<String> images = [
    'assets/img_1.png',
    'assets/img_2.png',
    'assets/img_3.png',
  ];

  final List<String> texts = [
    'Caption for Image 1',
    'Caption for Image 2',
    'Caption for Image 3',
  ];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (images.isNotEmpty)
              Image.asset(height: 300, images[currentindex], fit: BoxFit.contain),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(texts[currentindex]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: currentindex > 0
                      ? () {
                          setState(() {
                            currentindex--;
                          });
                        }
                      : null,
                  child: Text('Previous'),
                ),
                ElevatedButton(
                    onPressed: currentindex < images.length - 1
                        ? () {
                            setState(() {
                              currentindex++;
                            });
                          }
                        : null,
                    child: Text('next'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
