import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';
import 'package:flutter_app/model/media.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Realm - Vídeos'),
        centerTitle: true,
      ),
      drawer: CRDrawer(),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Card();
  }

  watchMedia(String mediaUrl, String titulo) async {
    if (await canLaunch(mediaUrl)) {
      await launch(mediaUrl);
    } else {
      throw 'Erro ao abrir $titulo';
    }
  }
}
