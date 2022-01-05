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

  _getVideos() {

    DataYT data = DataYT();
   return data.searchVideo("");

  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<VideoModel>>(
        future: _getVideos(),
        builder: (context, snapshot){

          var widget;

          switch(snapshot.connectionState){
            case ConnectionState.waiting :
              widget = Center(
                child: CircularProgressIndicator(
                  color: pickColor,
                ),
              );
              break;
            case ConnectionState.done :
              if(snapshot.hasError){
                print("Erro no endereço http!");
              }else{

              }
          }

          return widget;

        },
    );
  }
}
