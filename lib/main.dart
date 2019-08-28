import 'package:flutter/material.dart';
import 'package:flutter_app/UI/articles_list_page.dart';
import 'package:flutter_app/UI/cr_drawer.dart';
import 'package:flutter_app/api/articles_data.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      builder: (_) => ArticlesData.create(),
      dispose: (context, ArticlesData service) => service.client.dispose(),
      child: MaterialApp(
        title: 'Cards Realm',
        theme: new ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Cards Realm'),
          ),
          drawer: CRDrawer(),
          body: ArticlesPage(),
        ),
      ),
    );
  }
}
