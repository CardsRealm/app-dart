import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/UI/article_page.dart';
import 'package:flutter_app/api/articles_data.dart';
import 'package:flutter_app/model/article_item_list.dart';
import 'package:provider/provider.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildBody(context),
    );
  }

  FutureBuilder<Response<List<ArticleItemList>>> _buildBody(
      BuildContext context) {
    return FutureBuilder<Response<List<ArticleItemList>>>(
      future: Provider.of<ArticlesData>(context).getArticles(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          /* final List<ArticleItemList> _articleList = snapshot.data.body;
          return _buildList(context, _articleList); */
          return Container(
            child: Text('Teste'),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  _buildList(BuildContext context, List<ArticleItemList> _articleList) {
    return ListView.builder(
      itemCount: _articleList.length,
      padding: EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
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
                    onPressed:
                        readArticle(context, _articleList[index].articlePath),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  readArticle(BuildContext context, String path) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ArticlePage(path)));
  }
}
