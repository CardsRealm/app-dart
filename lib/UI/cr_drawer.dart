import 'package:flutter/material.dart';
import 'package:flutter_app/UI/about_page.dart';
import 'package:flutter_app/UI/articles_list_page.dart';
import 'package:flutter_app/UI/decks_list_page.dart';
import 'package:flutter_app/UI/media_page.dart';
import 'package:flutter_app/UI/metagame_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CRDrawer extends StatelessWidget {
  const CRDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Realminho King'),
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
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ArticlesPage()));
            },
          ),
          ListTile(
            title: Text('Vídeos'),
            trailing: Icon(FontAwesomeIcons.caretRight),
            leading: Icon(FontAwesomeIcons.video),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MediaPage()));
            },
          ),
          ListTile(
            title: Text('Metagame'),
            trailing: Icon(FontAwesomeIcons.caretRight),
            leading: Icon(FontAwesomeIcons.balanceScaleRight),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MetagamePage()));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Sobre Nós'),
            trailing: Icon(FontAwesomeIcons.caretRight),
            leading: Icon(FontAwesomeIcons.questionCircle),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          )
        ],
      ),
    );
  }
}
