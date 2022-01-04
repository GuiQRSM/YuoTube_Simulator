
class VideoModel {

  String id;
  String title;
  String desc;
  String pic;
  String channel;

  VideoModel({required this.id, required this.title, required this.desc, required this.pic, required this.channel});

  static converter(Map<String,dynamic> json){
    return VideoModel(
        channel: json ["snippet"] ["channelId"],
        id: json ["id"] ["videoId"],
        title: json ["snippet"] ["title"],
        desc: '',
        pic: json ["snippet"] ["thumbnails"] ["high"] ["url"],
    );
  }

 factory VideoModel.typeJson(Map<String,dynamic> json){
    return VideoModel(
      channel: json ["snippet"] ["channelId"],
      id: json ["id"] ["videoId"],
      title: json ["snippet"] ["title"],
      desc: '',
      pic: json ["snippet"] ["thumbnails"] ["high"] ["url"],
    );
 }

}

