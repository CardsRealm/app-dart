import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';
import 'package:flutter_app/api/articles_data.dart';
import 'package:flutter_app/model/article_item_list.dart';
import 'package:provider/provider.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Realm - Artigos'),
        centerTitle: true,
      ),
      drawer: CRDrawer(),
      body: _buildBody(context),
    );
  }

  FutureBuilder<Response<BuiltList<ArticleItemList>>> _buildBody(
      BuildContext context) {
    return FutureBuilder<Response<BuiltList<ArticleItemList>>>(
      future: Provider.of<ArticlesData>(context).getArticles(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final BuiltList<ArticleItemList> _articleList = snapshot.data.body;
          return _buildList(context, _articleList);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  // TODO adicionar timeago após o Leon mudar o formato da data no JSON
  // https://pub.dev/packages/timeago
  _buildList(BuildContext context, BuiltList<ArticleItemList> _articleList) {
    return ListView.builder(
        itemCount: _articleList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  _articleList[index].article_imgpath),
                            ),
                          ),
                        ),
                        Text(
                          _articleList[index].article_title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          _articleList[index].article_description,
                          textAlign: TextAlign.justify,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Autor: ${_articleList[index].nickname}',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                            ),
                            Text(
                              'Likes',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Views',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
