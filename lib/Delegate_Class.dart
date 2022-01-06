import 'package:flutter/material.dart';

class DelegateCustom extends SearchDelegate<String> {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [

    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {

    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {

    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    throw UnimplementedError();
  }

}