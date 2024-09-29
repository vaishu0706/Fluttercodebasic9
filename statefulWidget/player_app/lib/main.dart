import "package:flutter/material.dart";

  void main() {
  runApp(const player());
}

class player extends StatefulWidget {
  const player({super.key});

  @override
  State<player> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<player> {

    List <Map>PlayerList = [
     {
       "photo":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf5uLHNISvT0yRAMG2hCdwJIB4ZR5GDlQcOw&s",
       "name":"MS Dhoni",
     },

    {
      "photo":"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Virat_Kohli_portrait.jpg/966px-Virat_Kohli_portrait.jpg",
      "name":"Virat Kohlii",
    },
    {
      "photo":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqv-UYc8yeM9qJ_NgWnlw0cXDdNCGgdFLeeA&s",
      "name":"Hardik Pandya",
    },
    {
       "photo":"https://assets.telegraphindia.com/telegraph/2023/Jan/1674042248_shubman-gill.jpg",
       "name":"Shubhman Gill",
    },
    {
  
       "photo":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw2wKSTN9l_E0EmYHh77aalok-_vMdgOhfcw&s",
      "name":"Sachin Tendulkar",
    },
    {
      "photo":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ78POvTVsowaoATsT3O8sSv479w-NYo5_1yg&s",
      "name":"KL Rahul",
      },
      ];

    int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(

        appBar: AppBar(
          title:const Text("PlayerList"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),

       body:Center(         
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,       
         children:[
          
            Image.network(PlayerList[index]["photo"],height: 400,width: 400),
            Text("Name: ${PlayerList[index]["name"]}",
             style:const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.purple,
              fontSize: 30,
            ),
            ),
          ],        
        ),      
     ),
               
                floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      if(index < PlayerList.length-1){
                      index++;
                       setState(() {} );

                      } else {
                      index = 0;
                       setState(() {} );
                     }        
                    },
                  backgroundColor: Colors.amber,
                  child:const Icon(Icons.arrow_forward),
                  ),

                  const SizedBox(
                    width: 150,
                  ),

                  FloatingActionButton(
                    onPressed: (){
                      if(index > 0){
                         index--;
                          setState(() {} );
                     
                       }else {
                         index = 0;
                          setState(() {} );
                     
                      }
                    },
                    backgroundColor: Colors.amber,
                    child:const Icon(Icons.arrow_back),
                  ),
                ],
              ),
       ),      
      );   
  }
}