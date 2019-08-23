import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/api/articles_data.dart';
import 'package:provider/provider.dart';

class ArticlePage extends StatelessWidget {
  final String _articlePath;

  const ArticlePage(this._articlePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Response>(
        future:
            Provider.of<ArticlesData>(context).getArticleByPath(_articlePath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final Map article = jsonDecode(snapshot.data.bodyString);
            return _buildArticle(article);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget _buildArticle(Map article) {
    return Container();
  }
}
