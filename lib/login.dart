// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              color: Colors.amber[400],
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                ],
              ),
            ),
          ),
      
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.green[400],

              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const Padding(
                         padding:  EdgeInsets.only(top: 45, left: 20),
                        child: Text("User Name",
                        style: TextStyle(
                          fontSize: 15
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35,left: 20),
                        child: SizedBox(
                          width: 250,
                          height: 50,
                          child: TextFormField(decoration:const InputDecoration(
                            // hintText: "Enter your username",
                            labelText: "username",
                            border: OutlineInputBorder()
                          ),),
                        ),
                      )
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const Padding(
                        padding:  EdgeInsets.only(top: 45, left: 20),
                        child: Text("Password",
                        style: TextStyle(
                          fontSize: 15
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35,left: 30),
                        child: SizedBox(
                          width: 250,
                          height: 50,
                          child: TextFormField(
                            decoration:const InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder()
                          ),),
                        ),
                      )
                    ],
                  ),

                   Padding(
                     padding: const EdgeInsets.only(top: 60),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         InkWell(
                          onTap: (){
                            print('object');
                          },
                           child: Container(
                            height: 40,
                            width: 80,
                            color: Colors.blue,
                            child:const Center(
                              child: Text("Submit",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.white
                                ),
                              ),
                            )
                            
                            ),
                         ),

                        // FloatingActionButton(onPressed: (){},
                        // child: Icon(Icons.message),
                        // )

                        // IconButton(
                        //   onPressed: (){},
                        //  icon:Icon(Icons.delete
                        //  )
                        //  )

                        // TextButton(onPressed: (){},
                        //  child: Text("clik"))

                      // ElevatedButton(onPressed: onPressed, child: child)
                       ],
                     ),
                   )
                ],
              ),

            ),
          ),
        ],
      ),
    ),
    );
  }
}