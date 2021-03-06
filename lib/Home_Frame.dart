import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:youtube/Delegate_Class.dart';
import 'dart:convert';
import 'package:youtube/Frames/InHigh_Frame.dart';
import 'package:youtube/Frames/Inicial_Frame.dart';
import 'package:youtube/Frames/Registrations_Frame.dart';
import 'package:youtube/Frames/Library_Frame.dart';

class HomeFrame extends StatefulWidget {

  @override
  _HomeFrameState createState() => _HomeFrameState();
}

 String _getQ = "";

var pickColor = Color.fromRGBO(212, 25, 15, 1);
var _actualIndex = 3;

class _HomeFrameState extends State<HomeFrame> {
  @override
  Widget build(BuildContext context) {

    List<Widget> frames = [
      Inicio(_getQ),
      InHigh(),
      Registrations(),
      Library(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
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
            onPressed: () async {
             var res = await showSearch(
                  context: context,
                  delegate: DelegateCustom(),
              );
             print("Item da pesquisa: " + res!.toString());
             setState(() {
               _getQ = res;
             });
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
      body: Container(
        padding: EdgeInsets.all(10),
        child: frames[_actualIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: pickColor,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _actualIndex = index;
          });
        },
        currentIndex: _actualIndex,
          items: [
            BottomNavigationBarItem(
              title: Text(
                  "Home",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700
              ),),
              icon: Icon(
                  Icons.home,
              color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                  "Em alta",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                ),),
              icon: Icon(
                  Icons.whatshot_sharp,
                  color: Colors.black
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                  "Inscrições",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                ),),
              icon: Icon(
                  Icons.app_registration_rounded,
                  color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                  "Biblioteca",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                ),
              ),
              icon: Icon(
                  Icons.video_library_rounded,
              color: Colors.black,
              ),
            ),
          ],
      ),
    );
  }
}
