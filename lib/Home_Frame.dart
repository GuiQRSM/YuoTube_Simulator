import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeFrame extends StatefulWidget {
  const HomeFrame({Key? key}) : super(key: key);

  @override
  _HomeFrameState createState() => _HomeFrameState();
}

var pickColor = Color.fromRGBO(212, 25, 15, 1);

class _HomeFrameState extends State<HomeFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: pickColor,
        title: Text("YouTubeSimulator"),
      ),
      body: Container(),
    );
  }
}
