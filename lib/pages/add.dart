import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:snaphelp/model/model.dart';

class PageAdd extends StatefulWidget {
  @override
  _PageAddState createState() => _PageAddState();
}

class _PageAddState extends State<PageAdd> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model) {
            return Center(
              child: Text(
                '${model.count}',
                style: TextStyle(fontSize: 80.0),
              ),
            );
        }),
    );
  }

}