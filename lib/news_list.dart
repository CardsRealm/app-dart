import 'package:flutter/material.dart';
import 'news.dart';
import 'api.dart';

class NewsList extends StatefulWidget {
  final state = new _NewsListPageState();

  @override
  _NewsListPageState createState() => state;
}

class _NewsListPageState extends State<NewsList> {
  List _news = new List();
  var repository = new Api();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Container(
        child: _getListViewWidget(),
      ),
    );
  }

  @override
  void initState() {
    loadnews();
  }

  Widget _getListViewWidget() {
    var list = new ListView.builder(
        itemCount: _news.length,
        padding: new EdgeInsets.only(top: 5.0),
        itemBuilder: (context, index) {
          return _news[index];
        });

    return list;
  }

  loadnews() async {
    List result = await repository.loadNews();

    setState(() {
      result.forEach((item) {
        var news =
            new News(item['title'], '2019/07/28', item['body']);

        _news.add(news);
      });
    });
  }
}
