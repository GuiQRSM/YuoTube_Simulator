import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:youtube/Models/Video_model.dart';

const KEY_YT_API = "AIzaSyCknUzdop22JPUPvkdt4ztQXdfzmBJhVKE";
const ID_CHANNEL = "UCn_brbCS3S2NJP5NueYAvyg";
const BASE_URL = "https://www.googleapis.com/youtube/v3/";

class DataYT {

  Future<List<VideoModel>> searchVideo (String search) async {

    http.Response response;
    var url = Uri.parse(
        BASE_URL + "search"
            "?part=snippet"
            "&channelId=${ID_CHANNEL}"
            "&order=date"
            "&type=video"
            "&maxResults=20"
            "&key=${KEY_YT_API}"
            "&q=${search}"
    );
    response  = await http.get(url);

    if(response.statusCode == 200){
      Map<String,dynamic> itemVideo = json.decode(response.body);

      List<VideoModel> modelPlay = itemVideo["items"].map<VideoModel>(
          (map){
            return VideoModel.typeJson(map);
          }
      ).toList();

      return modelPlay;

      }

    }

  }


