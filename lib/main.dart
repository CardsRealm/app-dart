import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';
import 'news_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cards Realm',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cards Realm'),
        ),
        drawer: CRDrawer(),
        body: new NewsList(),
      ),
    );
  }
}
