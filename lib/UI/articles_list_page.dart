import 'package:flutter/material.dart';
import 'package:flutter_app/UI/article_page.dart';
import 'package:flutter_app/model/article_list.dart';

class ArticlesPage extends StatelessWidget {
  final List<ArticleList> _articleList;

  const ArticlesPage(this._articleList);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _articleList.length,
        itemBuilder: (BuildContext context, int index) =>
            buildList(context, index),
      ),
    );
  }

  buildList(BuildContext context, int index) {
    return Card(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network('${_articleList[index].imgPath}'),
          ListTile(
            title: Text(_articleList[index].title),
            subtitle: Text(_articleList[index].description),
          ),
          Column(
            children: <Widget>[
              Text(_articleList[index].nickName),
              Text(_articleList[index].publishDate.toString()),
              FlatButton(
                child: Text("Ler o Artigo"),
                onPressed: readArticle(context, index),
              )
            ],
          )
        ],
      ),
    );
  }

  readArticle(BuildContext context, int index) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ArticlePage(_articleList[index].articlePath)));
  }
}
