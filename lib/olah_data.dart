import 'package:flutter/material.dart';

class OlahdataPage extends StatefulWidget {
  final String username;

  const OlahdataPage({
    super.key, required this.username});

  @override
  _OlahdataState createState() => _OlahdataState();
}

class _OlahdataState extends State<OlahdataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Halo tole, ${widget.username}"),
      ),
    );
  }
}