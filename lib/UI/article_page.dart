import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/api/articles_data.dart';
import 'package:flutter_app/model/article.dart';
import 'package:flutter_app/util/guru_meditation.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Widget _buildArticle(BuildContext context, Article article) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: _buildHeader(article),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: SingleChildScrollView(
              child: Html(
                data: switchTags(article.article_txt),
                renderNewlines: true,
                useRichText:
                    true, // ! Renderiza os componentes customizados se false
                onLinkTap: (url) async {
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    showAlert(context, code: 42);
                  }
                },
                padding: EdgeInsets.all(8.0),
                linkStyle: const TextStyle(
                  color: Colors.purpleAccent,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildHeader(Article article) {
  return Column(
    children: <Widget>[
      Wrap(
        alignment: WrapAlignment.end,
        spacing: 8.0,
        runSpacing: 4.0,
        children: <Widget>[
          Text(
            article.article_title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            article.nickname,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          )
        ],
      )
    ],
  );
}

String switchTags(String src) {
  final card = RegExp(r'\[card\]\((.*?)\)');
  final bold = RegExp(r'\*(.*?)\*');
  final link1 = RegExp(r'\[link\]\((.*?)\)');
  final link2 = RegExp(r'\[link\]\((.*?)\)\((.*?)\)');
  final image = RegExp(r'\[image\]\(https(.*?)\)');
  final deck = RegExp(r'\[deck\]\((.*?)\)');

  String result = src;

  result = result.replaceAllMapped(card, (match) {
    return "<b> ${match.group(1)} </b>";
  });

  result = result.replaceAllMapped(bold, (match) {
    return "<b> ${match.group(0).replaceAll('*', '')} </b>";
  });

  result = result.replaceAllMapped(link2, (match) {
    return "<a href='${match.group(1)}?&partner=CardsRealm&utm_source=CardsRealm&utm_medium=affiliate&utm_campaign=CardsRealm'>${match.group(2)}</a>";
  });

  result = result.replaceAllMapped(link1, (match) {
    return "<a href='${match.group(1)}?&partner=CardsRealm&utm_source=CardsRealm&utm_medium=affiliate&utm_campaign=CardsRealm'>link</a>";
  });

  result = result.replaceAllMapped(image, (match) {
    return "<img src='https${match.group(1)}' />";
  });

  result = result.replaceAllMapped(deck, (match) {
    return "<a href='http://cardsrealm.com/decks/${match.group(1)}'>Deck List Completa</a>";
  });

  return result;
}
