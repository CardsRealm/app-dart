import 'package:chopper/chopper.dart';
import 'package:flutter_app/model/media.dart';

part 'media_data.chopper.dart';

@ChopperApi(baseUrl: 'cardsrealm.com/app')
abstract class MediaData extends ChopperService {
  @Get(path: '/getmedia')
  Future<Response<List<Media>>> getMedia();
}
