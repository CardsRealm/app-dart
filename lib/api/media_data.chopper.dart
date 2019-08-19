// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_data.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$MediaData extends MediaData {
  _$MediaData([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = MediaData;

  Future<Response> getMedia() {
    final $url = 'cardsrealm.com/app/getmedia';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
