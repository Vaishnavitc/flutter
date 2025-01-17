import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                
                  Container(
                    width: 5,
                    height: 500, 
                    color: Colors.black,
                  ),
                  const SizedBox(width: 0),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  
                    children: [
                      Container(
                        width: 250,
                        height: 35,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 250,
                        height: 35,
                        color: Colors.white,
                        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png"),
                      ),
                      Container(
                        width: 250,
                        height: 35,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
      
  }
}
