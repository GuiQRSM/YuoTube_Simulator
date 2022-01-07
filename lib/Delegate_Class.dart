import 'package:flutter/material.dart';

class DelegateCustom extends SearchDelegate<String> {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [

      IconButton(
        icon: Icon(
            Icons.clear_rounded,
            color: Colors.black,
        ),
        onPressed: (){
          query = "";
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    var widget = IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: (){
        close(
            context,
            "",
        );
      },
    );
    return widget;
  }

  @override
  Widget buildResults(BuildContext context) {
    close(
        context,
        query,
    );
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

   List<String> suggList = [];

    if(query.isNotEmpty){

      suggList= [
        "anime", "misterio", "herois", "aliens", "ovnis"
      ];

    }
    return ListView.builder(
        itemBuilder: itemBuilder,
        itemCount: suggList.length,
    );
  }

}