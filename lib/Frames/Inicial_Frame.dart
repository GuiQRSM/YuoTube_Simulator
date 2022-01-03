import 'package:flutter/material.dart';
import '../Credentials_API.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

var pickColor = Color.fromRGBO(212, 25, 15, 1);

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {

    DataYT data = DataYT();
    data.searchVideo("");

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text(
              "Inicio",
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
