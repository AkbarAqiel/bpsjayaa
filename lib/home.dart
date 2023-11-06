import 'package:bpsjayaa/login.dart';
import 'package:flutter/material.dart';
import 'package:bpsjayaa/header_drawer.dart';
import 'package:bpsjayaa/tabel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("BERANDA"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {Navigator.pop(context);},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log Out"),
                onTap: () {Navigator.pop(context);},
              ),
              ListTile(
                leading: const Icon(Icons.build_circle),
                title: const Text("Olah Data"),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));},
              ),
            ],
          ),
         ),
        ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Image.asset(
                      'assets/img/deva.png',
                      height: 300, width: 350,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Image.asset(
                      'assets/img/deva.png',
                      height: 300, width: 350,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Image.asset(
                      'assets/img/deva.png',
                      height: 300, width: 350,
                    ),
                  ),
                ),
              ]),
            ),

        //padding: const EdgeInsets.all(25),
        //crossAxisCount: 2,
        //children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Tabel()));
              },
              splashColor: const Color.fromARGB(255, 108, 0, 36),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.menu_book, size: 70, color: Colors.redAccent,),
                    Text("Tabel", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          
          Card(
            //crossAxisCount: 2,
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Tabel()));
              },
              splashColor: const Color.fromARGB(255, 108, 0, 36),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.menu_book, size: 70, color: Colors.redAccent,),
                    Text("Infografis", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),

          ],
        ),
      ),
    ),

    );
  }
}