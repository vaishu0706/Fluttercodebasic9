import "package:flutter/material.dart";

    void main() {
      runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
      const MyApp({super.key});

      @override
      Widget build(BuildContext context){
        return MaterialApp(
          home:Scaffold(

            appBar:AppBar(
              title:const Text("Container"),
              centerTitle: true,
              backgroundColor: Colors.green,
              ),

            body:Center(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Container(
                  width:100,
                  height:100,
                  color:Colors.pink,
                
                ),

                Container(
                  width: 100,
                  height:100,
                  color: Colors.green,
                ),

                Container(
                  width: 100,
                  height: 100,
                  color:Colors.red,
                ),
                ],
              ),

            ),
            ),
          
        );
      }
    }
