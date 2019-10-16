import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';

class MetagamePage extends StatefulWidget {
  @override
  _MetagamePageState createState() => _MetagamePageState();
}

class _MetagamePageState extends State<MetagamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metagame'),
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
