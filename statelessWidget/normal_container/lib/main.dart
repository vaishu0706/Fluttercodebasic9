import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(

        body:Column(
          children:[Container(
            width: 200,
            height: 200,
            color: Colors.amber,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.pink,
          ),

          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
          ],
        ),
          
      ),
    );
  }
}
