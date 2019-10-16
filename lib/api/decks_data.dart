import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_app/model/deck_card.dart';

part 'decks_data.chopper.dart';

@ChopperApi(baseUrl: 'cardsrealm.com/app')
abstract class DecksData extends ChopperService {
  @Get(path: '/getdeckbyid')
  Future<Response<BuiltList<DeckCard>>> getDeckById(@Query('deck_id') int id);
}
