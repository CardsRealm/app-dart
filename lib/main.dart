
import 'package:flutter/material.dart';
import 'news_list.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cards Realm',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new NewsList(),
    );
  }

}