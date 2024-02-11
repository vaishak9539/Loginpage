import 'package:flutter/material.dart';

class Dra extends StatefulWidget {
  const Dra({super.key});

  @override
  State<Dra> createState() => _DraState();
}

class _DraState extends State<Dra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter",style: TextStyle(
          color: Colors.white,
          ),
          ),
          centerTitle: true,
        backgroundColor: Colors.deepPurple,

        leading: Icon(Icons.home,
        color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
           IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
        ],
      ),
      body: Center(
        child: Text("Home page")
        ),
        drawer: Drawer(
          child: ListView(
            children:  [
              UserAccountsDrawerHeader(accountName: Text("Vaishak"),
               accountEmail: Text("Vaishakp17@gmail.com"),
               currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/free-images.jpg"),
               ),
               ),
                ListTile(
              leading: const Icon(Icons.person),
              title: const Text('My Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline_rounded),
              title: const Text('About',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),
             ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),
            ],
          ),
        ),
    );
  }
}