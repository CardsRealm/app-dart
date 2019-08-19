import 'package:flutter/material.dart';
import 'package:flutter_app/model/media.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaCard extends StatelessWidget {
  final Media media;

  const MediaCard({Key key, this.media}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
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
                onPressed: watchMedia(media.mediaURL),
              ),
            )
          ],
        ),
      ),
    );
  }

  watchMedia(String mediaUrl) async {
    if (await canLaunch(mediaUrl)) {
      launch(mediaUrl);
    } else {
      throw 'Erro ao abrir $mediaUrl';
    }
  }
}
