// ignore_for_file: prefer_const_constructors, avoid_print, unrelated_type_equality_checks, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ElevatedButton(onPressed: () async {
            var d = await showDatePicker(context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1999,1,1),
            lastDate: DateTime(2100,1,1));
            if (d != 0) {
              print(d);
              print(DateFormat('dd-MM-yyyy').format(d!));
            }
          },
          child: Text('Date')),
        ),
      ),
    );
  }
}