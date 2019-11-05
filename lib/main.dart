import 'package:flutter/material.dart';
import 'package:flutter_app/UI/articles_list_page.dart';
import 'package:flutter_app/api/articles_data.dart';
import 'package:flutter_app/api/media_data.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cards Realm',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: ArticlesPage(),
      ),
    );
  }
}

List<SingleChildCloneableWidget> providers = [
  Provider.value(value: ArticlesData.create()),
  Provider.value(value: MediaData.create())
];
