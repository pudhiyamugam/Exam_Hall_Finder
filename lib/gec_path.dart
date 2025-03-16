import 'package:flutter/material.dart';

class PathImages extends StatefulWidget {
  const PathImages({super.key});

  @override
  State<PathImages> createState() => _PathImagesState();
}

class _PathImagesState extends State<PathImages> {

  final List<String> images=[
    'assets/img_1.png',
    'assets/img_2.png',
    'assets/img_3.png',
  ];

  final List<String> texts = [
    'Caption for Image 1',
    'Caption for Image 2',
    'Caption for Image 3',
  ];

  int currentindex=0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Path To Exam Hall',
          style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromARGB(255, 130, 6, 207),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             if(images.isNotEmpty)
             Image.asset(
              images[currentindex],
              height: 300,
              fit: BoxFit.cover,
             ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
             child: Text(texts[currentindex]),),
             
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed:currentindex>0?
                 () {
                  setState(() {
                    currentindex--;
                  });
                  }
                  :null,
                  child: Text('Previous'),),
                  ElevatedButton(onPressed: currentindex<images.length-1?(){
                    setState(() {
                      currentindex++;
                    });
                  }
                  :null, child: Text('next'))
              ],
             )
          ],
        ),
      ),
    );
  }
}