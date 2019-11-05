// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metagame_data.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$MetagameData extends MetagameData {
  _$MetagameData([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = MetagameData;

  Future<Response> getMetagame() {
    final $url = '/app/metagame';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
