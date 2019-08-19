import 'package:chopper/chopper.dart';

part 'decks_data.chopper.dart';

@ChopperApi(baseUrl: 'cardsrealm.com/app')
abstract class DecksData extends ChopperService {
  @Get(path: '/getdeckbyid')
  Future<Response> getDeckById(@Query('deck_id') int id);
}
