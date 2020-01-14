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

  @override
  final definitionType = ArticlesData;

  @override
  Future<Response<BuiltList<ArticleItemList>>> getArticles() {
    final $url = '/app/getlastarticles';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<ArticleItemList>, ArticleItemList>($request);
  }

  @override
  Future<Response<Article>> getArticleByPath(String path) {
    final $url = '/app/getarticlebypath';
    final $params = <String, dynamic>{'article_path': path};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Article, Article>($request);
  }
}
