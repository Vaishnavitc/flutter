import 'package:flutter/material.dart';

void main(){
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget{
  const PlayersApp({super.key});

  @override
    State<PlayersApp> createState() => _PlayersAppState();
  }

  class _PlayersAppState extends State<PlayersApp> {
      int _counter = 0;

      List<String> playersList = <String>[
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU3Aod75OUU8-f5j8lGgXNQJcqerLphcU3Fw&s.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEzCZzOT1OMQdH3xmEHTjANJxmVgO82Ahsvg&s.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKL1FzZAat9Ad3zulJRTtw17xSQdwuHL0crw&s.jpg",
        "https://images1.wionews.com/images/wion/900x1600/2023/5/30/1685434063793_WhatsAppImage20230530at10.43.13AM1.jpeg",
      ];


      @override
      Widget build(BuildContext context){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Players',
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("Players App"),
            ),

            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    playersList[_counter],
                    height: 300,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if(_counter < playersList.length - 1){
                  _counter++;
                }else{
                  _counter = 0;
                }
                setState(() {});
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
        );
      }
    }
    