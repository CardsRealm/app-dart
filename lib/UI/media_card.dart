import 'package:flutter/material.dart';
import 'package:flutter_app/model/media.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaCard extends StatelessWidget {
  final Media media;

  const MediaCard(this.media);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network(
            '${media.imageURL}',
            scale: 1.0,
            repeat: ImageRepeat.noRepeat,
          ),
          ListTile(
            title: Text(media.texto),
            subtitle: Text(media.mediaDate.toString()),
          ),
          ButtonTheme.bar(
            child: FlatButton(
              child: Text('Assistir'),
              onPressed: watchMedia(media.mediaURL, media.texto),
            ),
          )
        ],
      ),
    );
  }

  watchMedia(String mediaUrl, String titulo) async {
    if (await canLaunch(mediaUrl)) {
      await launch(mediaUrl);
    } else {
      throw 'Erro ao abrir $titulo';
    }
  }
}
