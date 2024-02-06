import 'package:flutter/material.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50,),
            child: Container(
              width: 50,
              height: 50,
             child: CircleAvatar(backgroundColor: Colors.amber,
             ),
            ),
          ),

          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            child: Row(
              children: [
                Icon(Icons.search),
                Container(
                  height: 50,
                  width: 100,
                  // child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder()),),
                  child: TextFormField(decoration: InputDecoration(hintText: "hi")),
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}