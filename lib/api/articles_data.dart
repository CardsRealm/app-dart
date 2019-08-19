import 'package:chopper/chopper.dart';

part 'articles_data.chopper.dart';

@ChopperApi(baseUrl: 'cardsrealm.com/app')
abstract class ArticlesData extends ChopperService {
  @Get(path: '/getlastarticles')
  Future<Response> getArticles();

  @Get(path: '/getarticlebypath')
  Future<Response> getArticleByPath(@Query('article_path') String path);
}
