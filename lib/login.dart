import 'package:bpsjayaa/olah_data.dart';
import 'package:flutter/material.dart';
//import 'package:bpsjayaa/login.dart';
import 'package:bpsjayaa/header_drawer.dart';
//import 'package:bpsjayaa/tabel.dart';
import 'package:bpsjayaa/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage>{
  String username = "AkbarAqiel";
  String Password = "abcd1234";
  String alert = "Siap Login";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();

  void prosesLogin() {
    if(_formKey.currentState!.validate()){
      if(usernameInput.text == username && passwordInput.text == Password){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => OlahdataPage(username: usernameInput.text,)
        ));
      }else{
        setState(() {
          alert = "Username atau Password salah!";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("LOGIN"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));},
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

      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        //color: Colors.lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: 
                BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Selamat Datang, Silakan Masuk",
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
            SizedBox(
              height: 20,
            ),
            Text(alert),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
              children: <Widget>[
                TextFormField(
                  controller: usernameInput,
                  validator: (Value){
                    var value;
                    if(value.isEmpty){
                      return "Isi Username Anda";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 40,
                    ),
                    hintText: "Masukkan Username",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordInput,
                  validator: (Value){
                    var value;
                    if(value.isEmpty){
                      return "Isi Password Anda";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 40,
                    ),
                    hintText: "Masukkan Password",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: Colors.black87,
                  elevation: 5,
                  child: Container(
                    height: 50,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () => prosesLogin(),
                      child: Center(
                        child: Text(
                          "Masuk",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            )
          ],
        ),
      )
    );
  }
}