import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_app/UI/deck_page.dart';
import 'package:flutter_app/api/datetime_serializer.dart';
import 'package:flutter_app/model/article.dart';
import 'package:flutter_app/model/article_item_list.dart';
import 'package:flutter_app/model/card.dart';
import 'package:flutter_app/model/media.dart';
import 'package:flutter_app/model/metagame.dart';

part 'serializers.g.dart';

@SerializersFor(const [Article, Media, Deck, Card, ArticleItemList, Metagame])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
