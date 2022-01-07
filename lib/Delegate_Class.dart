import 'package:flutter/material.dart';

class DelegateCustom extends SearchDelegate<String> {

  var pickColor = Color.fromRGBO(212, 25, 15, 1);

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

      return ListView.builder(
        itemBuilder: (context, index) {

          return ListTile(
            title: Text(
              "${suggList[index]}",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: pickColor,
              ),
            ),
          );

        },
        itemCount: suggList.length,
      );

    }

  }

}