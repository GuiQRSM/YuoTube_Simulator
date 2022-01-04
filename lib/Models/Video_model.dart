
class VideoModel {

  String id;
  String title;
  String desc;
  String pic;
  String channel;

  VideoModel({required this.id, required this.title, required this.desc, required this.pic, required this.channel});

  static converter(Map<String,dynamic> json){
    return VideoModel(
        channel: '',
        id: '',
        title: '',
        desc: '',
        pic: ''
    );
  }

 //VideoModel.typrJson(Map<String,dynamic> json){

}

