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

  Future<Response<BuiltList<ArticleItemList>>> getArticles() {
    final $url = '/app/getlastarticles';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<ArticleItemList>, ArticleItemList>($request);
  }

  Future<Response<Article>> getArticleByPath(String path) {
    final $url = '/app/getarticlebypath';
    final Map<String, dynamic> $params = {'article_path': path};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Article, Article>($request);
  }
}
