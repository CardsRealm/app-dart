// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decks_data.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$DecksData extends DecksData {
  _$DecksData([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = DecksData;

  Future<Response<BuiltList<DeckCard>>> getDeckById(int id) {
    final $url = 'cardsrealm.com/app/getdeckbyid';
    final Map<String, dynamic> $params = {'deck_id': id};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltList<DeckCard>, DeckCard>($request);
  }
}
