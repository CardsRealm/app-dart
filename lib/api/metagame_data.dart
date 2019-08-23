import 'package:chopper/chopper.dart';

part 'metagame_data.chopper.dart';

@ChopperApi(baseUrl: 'cardsrealm.com/app')
abstract class MetagameData extends ChopperService {
  @Get(path: '/metagame')
  Future<Response> getMetagame();
}
