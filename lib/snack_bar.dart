// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Snackbar1 extends StatefulWidget {
  const Snackbar1({super.key});

  @override
  State<Snackbar1> createState() => _Snackbar1State();
}

class _Snackbar1State extends State<Snackbar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 135, 86),
        title: Text(
          "Check Box",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(22)),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.black,
                    content: Text("Error"),
                  action: SnackBarAction(label: "undo",
                   onPressed: (){}),
                  )
                  );
            },
            child: Text("Show Snackbar")),
      ),
    );
  }
}
