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

  @override
  final definitionType = MediaData;

  @override
  Future<Response<BuiltList<Media>>> getMedia() {
    final $url = '/app/getmedia';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<Media>, Media>($request);
  }
}
