import 'package:bpsjayaa/home.dart';
import 'package:bpsjayaa/ipm.dart';
import 'package:flutter/material.dart';
import 'package:bpsjayaa/header_drawer.dart';
import 'package:bpsjayaa/login.dart';

class Tabel extends StatefulWidget {
  const Tabel({super.key});
  
  @override
  _TabelState createState() => _TabelState();
}

class _TabelState extends State<Tabel>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("TABEL"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
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
      
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const IpmMadiun()));
              },
              splashColor: const Color.fromARGB(255, 108, 0, 36),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.menu_book, size: 70, color: Colors.redAccent,),
                    Text("IPM", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}