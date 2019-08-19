// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_data.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ArticlesData extends ArticlesData {
  _$ArticlesData([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ArticlesData;

  Future<Response> getArticles() {
    final $url = 'cardsrealm.com/app/getlastarticles';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getArticleByPath(String path) {
    final $url = 'cardsrealm.com/app/getarticlebypath';
    final Map<String, dynamic> $params = {'article_path': path};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
