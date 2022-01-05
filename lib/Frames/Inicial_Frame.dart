import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube/Frames/InHigh_Frame.dart';
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
              if(snapshot.hasData){
                return ListView.separated(
                    itemBuilder: itemBuilder,
                    separatorBuilder: (context, index) => Divider(
                      height: 4,
                      color: pickColor,
                    ),
                    itemCount: snapshot.data!.length
                );
              }else{
                widget = Center(
                  child: Text(
                      "Falha na requisição dos dados",
                      style: TextStyle(
                      fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: pickColor,
                  ),),
                );
              }

          }
          return widget;
        },
    );
  }
}
