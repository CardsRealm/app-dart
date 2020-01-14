import 'package:flutter/material.dart';
import 'package:flutter_app/UI/cr_drawer.dart';
import 'package:flutter_app/api/metagame_data.dart';
import 'package:flutter_app/model/list_format.dart';
import 'package:flutter_app/model/metagame.dart';
import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_app/util/guru_meditation.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MetagamePage extends StatefulWidget {
  @override
  _MetagamePageState createState() => _MetagamePageState();
}

class _MetagamePageState extends State<MetagamePage> {
  int _currentFormat;

  @override
  void initState() {
    _currentFormat = ListFormat.STANDARD;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metagame'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: ListFormat.MODERN,
                child: Text('Modern'),
              ),
              PopupMenuItem(
                value: ListFormat.STANDARD,
                child: Text('Standard'),
              ),
              PopupMenuItem(
                value: ListFormat.LEGACY,
                child: Text('Legacy'),
              ),
              PopupMenuItem(
                value: ListFormat.PAUPER,
                child: Text('Pauper'),
              ),
              /* PopupMenuItem(
                value: ListFormat.COMMANDER,
                child: Text('Commander'),
              ),
              PopupMenuItem(
                value: ListFormat.BRAWL,
                child: Text('Brawl'),
              ), */
              PopupMenuItem(
                value: ListFormat.PIONEER,
                child: Text('Pioneer'),
              ),
            ],
            offset: Offset(0, 50),
            onSelected: (value) {
              setState(() {
                _currentFormat = value;
              });
            },
          ),
        ],
      ),
      drawer: CRDrawer(),
      body: _buildBody(context),
      backgroundColor: Colors.blueGrey,
    );
  }

  FutureBuilder<Response<BuiltList<Metagame>>> _buildBody(
      BuildContext context) {
    return FutureBuilder<Response<BuiltList<Metagame>>>(
      future: Provider.of<MetagameData>(context).getMetagame(_currentFormat),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final BuiltList<Metagame> _meta = snapshot.data.body;
          return _buildList(context, _meta);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  _buildList(BuildContext context, BuiltList<Metagame> meta) {
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: meta.length + 1,
      itemBuilder: (BuildContext context, int index) {
        return index == 0
            ? _buildHeader(
                context, ListFormat.getFormat(meta[index].decks_meta_format))
            : InkWell(
                child: _buildCard(context, meta[index - 1]),
                onTap: () async {
                  String format =
                      ListFormat.getFormat(meta[index].decks_meta_format);
                  String url =
                      'http://cardsrealm.com/metagame/${format.toLowerCase()}/${meta[index - 1].decks_meta_path}';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    showAlert(context, code: 42);
                  }
                },
              );
      },
    );
  }

  _buildHeader(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.deepPurple[200],
      ),
      alignment: Alignment.topCenter,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  _buildCard(BuildContext context, Metagame item) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(item.decks_meta_crop_image),
                    )),
                  ),
                  Text(
                    '${item.decks_meta_name} - ${item.percentagem / 10}%',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Preço Médio: R\$ ${item.decks_meta_price_real / 100}')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
