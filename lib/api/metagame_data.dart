import 'package:chopper/chopper.dart';
import 'package:flutter_app/api/built_value_converter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_app/model/metagame.dart';

part 'metagame_data.chopper.dart';

@ChopperApi(baseUrl: '/app')
abstract class MetagameData extends ChopperService {
  @Get(path: '/get_metagame')
  Future<Response<BuiltList<Metagame>>> getMetagame(
      @Query('deck_format') int format);

  static MetagameData create() {
    final client = ChopperClient(
        baseUrl: 'http://www.cardsrealm.com',
        services: [_$MetagameData()],
        converter: BuiltValueConverter());
    return _$MetagameData(client);
  }
}
