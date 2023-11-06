import 'package:bpsjayaa/home.dart';
import 'package:bpsjayaa/login.dart';
import 'package:flutter/material.dart';
import 'package:bpsjayaa/header_drawer.dart';
//import 'package:bpsjayaa/penduduk.dart';

class IpmMadiun extends StatefulWidget {
  const IpmMadiun({super.key});

  @override
  _IpmMadiunState createState() => _IpmMadiunState();
}

class _IpmMadiunState extends State<IpmMadiun> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("IPM MADIUN"),
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


    );
  }

}