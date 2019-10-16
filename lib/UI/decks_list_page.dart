import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';

class DecksListPage extends StatefulWidget {
  _DecksListPageState createState() => _DecksListPageState();
}

class _DecksListPageState extends State<DecksListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Decks'),
        centerTitle: true,
      ),
      drawer: CRDrawer(),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Container();
  }
}
