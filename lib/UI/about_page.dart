import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Realm - Sobre Nós'),
        centerTitle: true,
      ),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
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
                    'Sua melhor fonte de notícias, ideias e cartas no mundo do Magic',
                    textAlign: TextAlign.justify,
                  )
                ],
              )),
        ),
      ],
    ));
  }
}
