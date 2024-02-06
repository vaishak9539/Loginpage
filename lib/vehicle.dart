import 'package:flutter/material.dart';

class Vehi extends StatefulWidget {
  const Vehi({super.key});

  @override
  State<Vehi> createState() => _VehiState();
}

class _VehiState extends State<Vehi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue[200],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30, bottom: 5),
            child: Container(
              height: 50,
              width: 50,
              child: CircleAvatar(backgroundImage: NetworkImage("https://cdn4.vectorstock.com/i/1000x1000/60/28/woman-icon-on-white-background-symbol-person-vector-29656028.jpg"),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Icon(Icons.search),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 180,
                        child: TextFormField(
                          decoration: InputDecoration(hintText: "Serch"),
                        ),
                      ),
                    )
                  ],
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.notifications),
          )
        ]),

        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context,Int){
                 return Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                      width: 100,
                      height: 130,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Container(
                                  width: 80,
                                  height: 90,
                                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXEOIc8iMaeqjkrkraegI5mebdz29b3bLTXQ&usqp=CAU"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30,top: 10),
                                child: Text("2+ year experience",
                                style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text("Fuel leaking"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:40 ,top: 30),
                            child: Container(
                              height: 30,
                              width: 150,
                              child: Center(
                                child: Text("Available",
                                style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                              color: Colors.green[400]
                              ),
                            ),
                          )
                            ],
                          ),
                        ],
                      ),
                      
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[100],
                      
                      ),
                      
                      
                    ),
                 );
                },
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75,bottom: 25),
              child: Row(
                children: [
                  Container(
                    width: 140,
                    height: 50,
                    color: Colors.pink,
                    child: Center(
                      child: Text("Requst",
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 50,
                    color: Colors.blue,
                    child: Text(""),
                  ),
                ],
              ),
            )
          ],
        ),

    
      );
  }
}