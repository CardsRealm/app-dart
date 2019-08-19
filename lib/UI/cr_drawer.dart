import 'package:flutter/material.dart';

class CRDrawer extends StatelessWidget {
  const CRDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Artigos'),
            trailing: Icon(Icons.arrow_forward),
            onTap: loadArticles(),
          ),
          ListTile(
            title: Text('Vídeos'),
            trailing: Icon(Icons.arrow_forward),
            onTap: loadVideos(),
          ),
          ListTile(
            title: Text('Metagame'),
            trailing: Icon(Icons.arrow_forward),
            onTap: loadMetagame(),
          ),
          ListTile(
            title: Text('Decks'),
            trailing: Icon(Icons.arrow_forward),
            onTap: loadDecks(),
          )
        ],
      ),
    );
  }

  loadArticles() {}

  loadVideos() {}

  loadMetagame() {}

  loadDecks() {}
}
