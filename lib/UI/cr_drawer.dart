import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CRDrawer extends StatelessWidget {
  const CRDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Realminho'),
            accountEmail: Text('cardsrealm@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/realminho_avatar.jpg'),
            ),
          ),
          ListTile(
            title: Text('Artigos'),
            trailing: Icon(FontAwesomeIcons.caretRight),
            leading: Icon(FontAwesomeIcons.newspaper),
            onTap: loadArticles(),
          ),
          ListTile(
            title: Text('Vídeos'),
            trailing: Icon(FontAwesomeIcons.caretRight),
            leading: Icon(FontAwesomeIcons.video),
            onTap: loadVideos(),
          ),
          ListTile(
            title: Text('Metagame'),
            trailing: Icon(FontAwesomeIcons.caretRight),
            leading: Icon(FontAwesomeIcons.balanceScaleRight),
            onTap: loadMetagame(),
          ),
          ListTile(
            title: Text('Decks'),
            trailing: Icon(FontAwesomeIcons.caretRight),
            leading: Icon(FontAwesomeIcons.listAlt),
            onTap: loadDecks(),
          ),
          Divider(),
          ListTile(
            title: Text('Sobre Nós'),
            trailing: Icon(FontAwesomeIcons.caretRight),
            leading: Icon(FontAwesomeIcons.questionCircle),
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
