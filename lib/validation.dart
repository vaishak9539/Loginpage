// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:loginpage_/navigator_sc1.dart';

class Validation1 extends StatefulWidget {
  const Validation1({super.key});

  @override
  State<Validation1> createState() => _Validation1State();
}

class _Validation1State extends State<Validation1> {

  final name = TextEditingController();
  final formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      labelText: "enter name", border: OutlineInputBorder()),
                  validator: (value1) {
                    if (value1?.isEmpty ?? true) {
                      return "Please enter name";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState?.validate()??false) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return Sc1();
                        }));
                      }
                    },
                    child: Text("Submit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
