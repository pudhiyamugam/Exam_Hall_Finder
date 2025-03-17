import 'package:flutter/material.dart';
import 'package:flutter_application_1/gec_path.dart';
import 'find_seat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter app',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 130, 6, 207),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );
                },
                child: Text('FIND SEAT'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PathImages(),
                    ),
                  );
                },
                child: Text('GEC PATH'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
