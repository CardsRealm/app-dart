import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';

class DecksListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Decks'),
        centerTitle: true,
      ),
      drawer: CRDrawer(),
      body: _buildBody(context),
      backgroundColor: Colors.blueGrey,
    );
  }
}

Widget _buildBody(BuildContext context) {
  return Container();
}
