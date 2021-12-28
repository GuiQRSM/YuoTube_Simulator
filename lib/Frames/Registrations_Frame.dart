import 'package:flutter/material.dart';

class Registrations extends StatefulWidget {
  const Registrations({Key? key}) : super(key: key);

  @override
  _RegistrationsState createState() => _RegistrationsState();
}

var pickColor = Color.fromRGBO(212, 25, 15, 1);

class _RegistrationsState extends State<Registrations> {
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
              "Inscrições",
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
