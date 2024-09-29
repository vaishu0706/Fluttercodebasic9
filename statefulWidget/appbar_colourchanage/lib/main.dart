import "package:flutter/material.dart";

  void main(){
    runApp(const Appbar());
  }

  class Appbar extends StatefulWidget {
    const Appbar({super.key});

    @override
    State createState() => _Appbar();
  }

  class _Appbar extends State {
    bool change = true;

    @override
   Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(

        appBar: AppBar(
          title: const Text("AppBar"),
          backgroundColor: change?Colors.purple:Colors.pink,
        ),

        body:const Center(
          child:Text("Hello Core2Web"),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(change==true){
              change = false;
            } else {
              change = true;
            }
            setState(() { });
          },
          backgroundColor: Colors.green,
          child:const Text("Toggle"),        ),
      ),
    );
   }
  }
  