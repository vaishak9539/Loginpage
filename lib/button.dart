import 'package:flutter/material.dart';

class But extends StatefulWidget {
  const But({super.key});

  @override
  State<But> createState() => _ButState();
}

class _ButState extends State<But> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Clik The Button",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                ),
                ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child:  TextButton(
              onPressed: (){},
               child: Text("Clik"))
              
                ),
            ),
           
             
          ],
        ),
      ),
    );
  }
}