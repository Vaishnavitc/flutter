import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.network(
              "https://i.pinimg.com/564x/b0/dc/4b/b0dc4b1b048e3a1e3302e5ca9e585dfb.jpg",
                height: 50,
                width: 10,
                //color: Colors.amber,
              ),
              Image.network(
                "https://i.pinimg.com/564x/b0/dc/4b/b0dc4b1b048e3a1e3302e5ca9e585dfb.jpg",
                fit:BoxFit.cover,
              ),
              Container(
                height: 100,
                width: 10,
            ),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Zakasss",
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.w500,
              ),
            ),
            Image.network(
                "https://i.pinimg.com/564x/b0/dc/4b/b0dc4b1b048e3a1e3302e5ca9e585dfb.jpg",
        
                height: 100,
                width: 10,
                //color: Colors.amber,
              ),
              Image.network(
                "https://i.pinimg.com/564x/b0/dc/4b/b0dc4b1b048e3a1e3302e5ca9e585dfb.jpg",
                fit:BoxFit.cover,
              ),
              Container(
                height: 100,
                width: 10,
                
                //color: Colors.amber,
              ),
              Image.network(
                "https://i.pinimg.com/564x/b0/dc/4b/b0dc4b1b048e3a1e3302e5ca9e585dfb.jpg",
                fit:BoxFit.cover,
              ),
              Container(
                height: 100,
                width: 10,
            ),
            GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 100,
                color: Colors.amber,
                child: const Text(
                  "Press me",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}