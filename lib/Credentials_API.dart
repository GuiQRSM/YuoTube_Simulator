import 'package:http/http.dart' as http;
import 'dart:convert';

const KEY_YT_API = "AIzaSyCknUzdop22JPUPvkdt4ztQXdfzmBJhVKE";
const ID_CHANNEL = "UCVHFbqXqoYvEWM1Ddxl0QDg";
const BASE_URL = "https://www.googleapis.com/youtube/v3/";

class DataYT {

  void searchVideo (String search) async {

    http.Response response;
    var url = Uri.parse(
        BASE_URL + "search"
            "?part=snippet"
            "&type=video"
            "&channelId=${ID_CHANNEL}"
            "&maxResults=20"
            "&order=date"
            "&key=${KEY_YT_API}"
            "&q=${search}"
    );
    response  = await http.get(url);

    if(response.statusCode == 200){
      Map<String,dynamic> itemVideo = json.decode(response.body);
      print("Dados do GET: " + itemVideo["items"] [1] ["snippet"] ["thumbnails"] ["default"] ["url"].toString());
      //print("Dados do GET: " + response.body);

    }

  }

}

