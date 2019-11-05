import 'package:chopper/chopper.dart';
import 'package:flutter_app/api/built_value_converter.dart';

part 'metagame_data.chopper.dart';

@ChopperApi(baseUrl: '/app')
abstract class MetagameData extends ChopperService {
  @Get(path: '/metagame')
  Future<Response> getMetagame();

  static MetagameData create() {
    final client = ChopperClient(
        baseUrl: 'http://www.cardsrealm.com',
        services: [_$MetagameData()],
        converter: BuiltValueConverter());
    return _$MetagameData(client);
  }
}
