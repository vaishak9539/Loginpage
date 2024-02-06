import 'package:flutter/material.dart';

class Sceo extends StatefulWidget {
  const Sceo({super.key});

  @override
  State<Sceo> createState() => _SceoState();
}

class _SceoState extends State<Sceo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const Padding(
                padding:  EdgeInsets.only(top: 20),
                child:  Text("Google",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                  ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(top: 15),
                child: Text("Sign in",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 27
                ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(top: 5),
                child: Text("with your Google Account"
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text("Learn more about using your account",
                style: TextStyle(
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 350,
                  height: 60,
                  child: TextFormField(
                    decoration:const InputDecoration(
                      labelText: "Email or phone",
                      border: OutlineInputBorder()
                      ),
                      )
                      ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Text("Forgot email?",
                    style: TextStyle(
                  color: Colors.blue[800],
                  fontWeight: FontWeight.normal
                  ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only( left: 15, top: 80),
                child: Row(
                  children: [
                    Text("Create account",
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 350,right: 10),
                    child: InkWell(
                      onTap: (){print("hi");},
                      child: Container(
                        width: 80,
                        height: 40,
                        color: Colors.blue,
                        child:const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Next",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ))
        ),
    );
  }
}