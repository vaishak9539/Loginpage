import 'package:flutter/material.dart';

class Coun extends StatefulWidget {
  const Coun({super.key});

  @override
  State<Coun> createState() => _CounState();
}

class _CounState extends State<Coun> {
  var Counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Number"),
              Text(Counter.toString()
              ),
            ],
          ),
        )
        ),


      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: (){
              print(Counter);
              setState(() {
                Counter=Counter+1;
              });
              
            },
           child: Icon(Icons.add),
           ),

           FloatingActionButton(onPressed: (){
            setState(() {
              Counter=Counter-1;
            }
            );
            print(Counter);
           },

           child: Icon(Icons.remove)
           )
        ],
      ),

       
    );
  }
}