import 'package:flutter/material.dart';
import 'package:youtube/Models/Video_model.dart';
import '../Credentials_API.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

var pickColor = Color.fromRGBO(212, 25, 15, 1);

class _InicioState extends State<Inicio> {

  void _getVideos() async {

    DataYT data = DataYT();
    data.searchVideo("");

  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<VideoModel>>(
        future: ,
        builder: (){

        },
    );
  }
}
