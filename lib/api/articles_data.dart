import 'package:chopper/chopper.dart';
import 'package:flutter_app/model/article.dart';
import 'package:flutter_app/model/article_item_list.dart';

part 'articles_data.chopper.dart';

@ChopperApi(baseUrl: '/app')
abstract class ArticlesData extends ChopperService {
  @Get(path: '/getlastarticles')
  Future<Response<List<ArticleItemList>>> getArticles();

  @Get(path: '/getarticlebypath')
  Future<Response<Article>> getArticleByPath(
      @Query('article_path') String path);

  static ArticlesData create() {
    final client = ChopperClient(
      baseUrl: 'http://www.cardsrealm.com',
      services: [_$ArticlesData()],
    );
    return _$ArticlesData(client);
  }
}
