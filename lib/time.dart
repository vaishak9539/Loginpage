import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Time extends StatefulWidget {
  const Time({super.key});
  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {


  TimeOfDay? selectedTime;
  
  Future<void> pickTime() async {
      var t=await showTimePicker(context: context,
       initialTime: TimeOfDay.now());
setState(() {
  selectedTime = t;
});
       
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(onPressed: ()async{

              pickTime();
               
            },
             child: Text("Time")),
             
        // Text(selectedTime!=null ? selectedTime!.format(context):'')



          if(selectedTime==null)
            Text('')
            else  
            Text(selectedTime!.format(context))
                   
          ],
        ),
               ),
    );
  }
}