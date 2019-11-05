import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/util/guru_meditation.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_app/UI/cr_drawer.dart';
import 'package:flutter_app/model/media.dart';
import 'package:flutter_app/api/media_data.dart';

class MediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Realm - Vídeos'),
        centerTitle: true,
      ),
      drawer: CRDrawer(),
      body: _buildBody(context),
      backgroundColor: Colors.blueGrey,
    );
  }

  FutureBuilder<Response<BuiltList<Media>>> _buildBody(BuildContext context) {
    return FutureBuilder<Response<BuiltList<Media>>>(
      future: Provider.of<MediaData>(context).getMedia(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final BuiltList<Media> _mediaList = snapshot.data.body;
          return _buildList(context, _mediaList);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  _buildList(BuildContext context, BuiltList<Media> _mediaList) {
    return ListView.builder(
      itemCount: _mediaList.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            watchMedia(context, _mediaList[index].media_link_link);
          },
          child: Center(
            child: Card(
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
                                image: NetworkImage(
                                    _mediaList[index].media_link_image),
                              ),
                            ),
                          ),
                          Text(_mediaList[index].media_link_text),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  watchMedia(BuildContext context, String mediaUrl) async {
    if (await canLaunch(mediaUrl)) {
      await launch(mediaUrl);
    } else {
      showAlert(context, code: 42);
    }
  }
}
