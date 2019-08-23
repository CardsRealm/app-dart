import 'package:chopper/chopper.dart';
import 'package:flutter_app/model/article.dart';
import 'package:flutter_app/model/article_list.dart';

part 'articles_data.chopper.dart';

@ChopperApi(baseUrl: 'cardsrealm.com/app')
abstract class ArticlesData extends ChopperService {
  @Get(path: '/getlastarticles')
  Future<Response<List<ArticleList>>> getArticles();

  @Get(path: '/getarticlebypath')
  Future<Response<Article>> getArticleByPath(
      @Query('article_path') String path);
}
