import 'package:flutter/material.dart';
import 'package:snaphelp/screens/account.dart';
import 'package:snaphelp/screens/home.dart';
import 'package:snaphelp/screens/settings.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:snaphelp/model/model.dart';

void main() {

  final MainModel _model = MainModel();

  runApp(ScopedModel<MainModel>(
    model: _model,
    child: MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
      AccountScreen.routeName: (BuildContext context) => AccountScreen(),
  },
  )));
}