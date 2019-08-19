import 'package:chopper/chopper.dart';

part 'media_data.chopper.dart';

@ChopperApi(baseUrl: 'cardsrealm.com/app')
abstract class MediaData extends ChopperService {
  @Get(path: '/getmedia')
  Future<Response> getMedia();
}
