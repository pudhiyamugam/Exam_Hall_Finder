import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find your Exam Hall',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 130, 6, 207),
      ),
      body: Center(
        child: TextExample(),
      ),
    );
  }
}

class TextExample extends StatefulWidget {
  const TextExample({super.key});

  @override
  State<TextExample> createState() => _TextExampleState();
}

class _TextExampleState extends State<TextExample> {
  late TextEditingController _controller;

  @override
  void initState(){
    super.initState();
    _controller=TextEditingController();  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: SizedBox(
            width: 250,
            child: TextField(
              controller: _controller,
              onSubmitted: (String value){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('You have entered:'),
                    content: Text(value),
                    actions: [
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: 'REG_NO'),
            ),
          ),
        ),
      ),
    );
  }
}
