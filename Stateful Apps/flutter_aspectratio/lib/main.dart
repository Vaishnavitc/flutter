import 'package:flutter/material.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController nameController = TextEditingController();

  String? myName;

  List<String> playersList = [];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Aspect Ratio Demo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
            child: Image.network(
              "https://i.pinimg.com/564x/b0/dc/4b/b0dc4b1b048e3a1e3302e5ca9e585dfb.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
  
}