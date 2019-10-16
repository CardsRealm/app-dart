import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';
import 'package:flutter_app/api/articles_data.dart';
import 'package:flutter_app/model/article.dart';
import 'package:provider/provider.dart';

class ArticlePage extends StatelessWidget {
  final String _articlePath;

  const ArticlePage(this._articlePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Realm'),
        centerTitle: true,
      ),
      drawer: CRDrawer(),
      body: _buildBody(context),
    );
  }

  FutureBuilder<Response<Article>> _buildBody(BuildContext context) {
    return FutureBuilder<Response<Article>>(
      future: Provider.of<ArticlesData>(context).getArticleByPath(_articlePath),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final Article article = snapshot.data.body;
          return _buildArticle(article);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  _buildArticle(Article article) {
    return Container();
  }
}
