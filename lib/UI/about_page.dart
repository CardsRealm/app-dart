import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Realm - Sobre Nós'),
        centerTitle: true,
      ),
      body: _buildBody(context),
      backgroundColor: Colors.blueGrey,
    );
  }

  Widget _buildBody(BuildContext context) {
    return Card(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(
          fit: FlexFit.loose,
          child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage('assets/images/realminho_avatar.jpg'),
                      radius: 60.0,
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                  Text(
                    'Cards Realm',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'A Cards Realm é uma plataforma especializada em conectar jogadores de diferentes domínios de cartas, onde oferece maneiras de empoderamento, permitindo-lhes compartilhar e trocar cartas dos seus jogos favoritos.',
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    height: 30,
                  ),
                  Text(
                    'Siga-nos em nossas redes sociais',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(FontAwesomeIcons.facebook),
                        tooltip: 'Facebook',
                        onPressed: () async {
                          await launch('http://facebook.com/CardsRealmBR');
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.instagram),
                        tooltip: 'Instagram',
                        onPressed: () async {
                          await launch('https://www.instagram.com/cardsrealm/');
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.twitter),
                        tooltip: 'Twitter',
                        onPressed: () async {
                          await launch('https://twitter.com/CardsRealm');
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.twitch),
                        tooltip: 'Twitch TV',
                        onPressed: () async {
                          await launch('http://twitch.tv/cardsrealm');
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.youtube),
                        tooltip: 'Youtube',
                        onPressed: () async {
                          await launch('https://www.youtube.com/cardsrealm');
                        },
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ],
    ));
  }
}
