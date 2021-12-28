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
      appBar: AppBar(
        backgroundColor: pickColor,
        title: Image.asset(
          "imgs/alternative_yt.png",
          height: 30,
          width: 100,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
            onPressed: (){
              print("Ícone de pesquisa acionado!");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.videocam_rounded,
              color: Colors.black,
            ),
            onPressed: (){
              print("Ícone de videoCAM acionado!");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.black,
            ),
            onPressed: (){
              print("Ícone de conta acionado!");
            },
          ),
        ],
      ),
    );
  }
}
