//import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() {
  runApp(const containerapp());
}

class containerapp extends StatefulWidget {
  const containerapp({super.key});

  @override
  State createState() => _containerapp();
}

class _containerapp extends State {
  bool changecolor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),

        body: Center(         
            child: Container(
              width: 100,
              height: 100,
              color: changecolor ? Colors.orange : Colors.blue,
            ),
        ) ,
          
      
         floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (changecolor == true) {
              changecolor = false;
            } else {
              changecolor = true;
            }
            setState(() {});
          },
          backgroundColor: Colors.pink,
          child: const Text("click"),
        ),
    ),
      );
  }
}

