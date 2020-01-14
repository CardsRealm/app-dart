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

  @override
  final definitionType = MetagameData;

  @override
  Future<Response<BuiltList<Metagame>>> getMetagame(int format) {
    final $url = '/app/get_metagame';
    final $params = <String, dynamic>{'deck_format': format};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltList<Metagame>, Metagame>($request);
  }
}
