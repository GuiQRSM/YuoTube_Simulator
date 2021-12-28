import 'package:flutter/material.dart';

class InHigh extends StatefulWidget {
  const InHigh({Key? key}) : super(key: key);

  @override
  _InHighState createState() => _InHighState();
}

var pickColor = Color.fromRGBO(212, 25, 15, 1);

class _InHighState extends State<InHigh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text(
                "Em alta",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),),
          ),
        ),
      ),
    );
  }
}
