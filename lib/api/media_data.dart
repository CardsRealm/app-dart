import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_app/api/built_value_converter.dart';
import 'package:flutter_app/model/media.dart';

part 'media_data.chopper.dart';

@ChopperApi(baseUrl: '/app')
abstract class MediaData extends ChopperService {
  @Get(path: '/getmedia')
  Future<Response<BuiltList<Media>>> getMedia();

  static MediaData create() {
    final client = ChopperClient(
        baseUrl: 'http://www.cardsrealm.com',
        services: [_$MediaData()],
        converter: BuiltValueConverter());
    return _$MediaData(client);
  }
}
