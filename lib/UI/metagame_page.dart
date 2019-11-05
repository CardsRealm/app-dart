import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';

class MetagamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metagame'),
        centerTitle: true,
      ),
      drawer: CRDrawer(),
      body: _buildBody(context),
      backgroundColor: Colors.blueGrey,
    );
  }

  _buildBody(BuildContext context) {
    return Container();
  }
}
