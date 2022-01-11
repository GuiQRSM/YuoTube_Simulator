import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube/Models/Video_model.dart';
import '../Credentials_API.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class Inicio extends StatefulWidget {

  String takeQ;
  Inicio(this.takeQ);

  @override
  _InicioState createState() => _InicioState();
}

var pickColor = Color.fromRGBO(212, 25, 15, 1);

class _InicioState extends State<Inicio> {

  _getVideos(String receiverQ) {

    DataYT data = DataYT();
   return data.searchVideo(receiverQ);

  }

  @override
  void initState() {
    super.initState();
    print("First Statefull Widget method to be loaded.");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Second method to be called when loading the Statefull Widget.");
  }

  @override
  void didUpdateWidget(covariant Inicio oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Method called in sync with the second method to update the Statefull Widget during loading");
  }

  @override
  Widget build(BuildContext context) {

    print("Third method to be called when loading the Statefull Widget.");

    return FutureBuilder<List<VideoModel>>(
        future: _getVideos(widget.takeQ),
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
                    itemBuilder: (context, index){

                      List<VideoModel> indexVideo = snapshot.data!;
                      VideoModel finalGet = indexVideo[index];

                      return GestureDetector(
                        onTap: (){
                          FlutterYoutube.playYoutubeVideoById(
                              apiKey: KEY_YT_API,
                              videoId: finalGet.id,
                              autoPlay: true,
                              fullScreen: false
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(finalGet.pic),
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "${finalGet.title}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black
                                ),),
                              subtitle: Text(
                                "${finalGet.channel}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ],
                        ),
                      );

                    },
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
              break;
          }
          return widget;
        },
    );
  }

  @override
  void dispose() {
    super.dispose();
    print("The fourth and last method to be called upon loading/running the Statefull Widget.");
  }

}
