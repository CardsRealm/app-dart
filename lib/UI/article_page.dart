import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/api/articles_data.dart';
import 'package:flutter_app/model/article.dart';
import 'package:flutter_app/util/guru_meditation.dart';
import 'package:flutter_app/util/text_transform.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:html/dom.dart' as dom;

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
      body: _buildBody(context),
      backgroundColor: Colors.blueGrey,
    );
  }

  FutureBuilder<Response<Article>> _buildBody(BuildContext context) {
    return FutureBuilder<Response<Article>>(
      future: Provider.of<ArticlesData>(context).getArticleByPath(_articlePath),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final Article article = snapshot.data.body;
          return _buildArticle(context, article);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  _buildArticle(BuildContext context, Article article) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(article.imageURLUser),
                  minRadius: 30.0,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      article.article_title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      article.nickname,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: SingleChildScrollView(
              child: Html(
                data: TextTransform.switchTags(article.article_txt),
                renderNewlines: true,
                useRichText: false, // ! Renderiza os componentes customizados
                onLinkTap: (url) async {
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    showAlert(context, code: 42);
                  }
                },
                onImageTap: (src) {
                  _showCard(context, src);
                },
                padding: EdgeInsets.all(8.0),
                linkStyle: const TextStyle(
                  color: Colors.purpleAccent,
                  decoration: TextDecoration.none,
                ),
                customTextStyle: (dom.Node node, TextStyle baseStyle) {
                  if (node is dom.Element) {
                    switch (node.localName) {
                      case "p":
                        return baseStyle
                            .merge(TextStyle(height: 2, fontSize: 16));
                    }
                  }
                  return baseStyle;
                },
                customRender: (node, children) {
                  if (node is dom.Element) {
                    switch (node.localName) {
                      case 'deck':
                        children.add(Container(
                          child: Text('DECK ID'),
                        ));
                        return Column(children: children);
                      // return _deckWidget(context, node.attributes['id']);
                    }
                  }
                  return null;
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

_showCard(BuildContext context, String imgPath) {
  Dialog card = Dialog(
    child: Container(
        width: 300,
        height: 300,
        child: Column(
          children: <Widget>[
            Image.network(
              imgPath,
              width: 300,
              height: 250,
            ),
            RaisedButton(
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            )
          ],
        )),
  );
  showDialog(context: context, builder: (_) => card);
}

_deckWidget(BuildContext context, String deckId) {
  return Container(
    child: Text('Deck ID: $deckId'),
  );
}
