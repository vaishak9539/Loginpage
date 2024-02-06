import 'package:flutter/material.dart';
import 'package:loginpage_/login.dart';
import 'package:loginpage_/vehicle.dart';

class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {

    List aa=[Text("data",
    style: TextStyle(fontSize:20),
    ),
    Vehi(),
    Home(),
    
    ];


  var selectedIndex=0;

  void onItemTapped(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      
      body: aa.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
         items: [BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.green,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.green
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Account",
            backgroundColor: Colors.green
            ),
         ],
         type: BottomNavigationBarType.shifting,
         currentIndex: selectedIndex,
         selectedItemColor: Colors.pink,
         iconSize: 25,
         onTap: onItemTapped,


      ),
    );
  }
}