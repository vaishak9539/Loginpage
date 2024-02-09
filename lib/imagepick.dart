import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imag extends StatefulWidget {
  const Imag({super.key});

  @override
  State<Imag> createState() => _ImagState();
}

class _ImagState extends State<Imag> {

  XFile?PickedFile;
  File?image;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()async{
          
          ImagePicker picker=ImagePicker();
          PickedFile=await picker.pickImage(source: ImageSource.camera);
          setState(() {
            image=File(PickedFile!.path);
          });
        },
         child: Text("tap")),
      ),
    );
  }
}