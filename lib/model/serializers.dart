import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_app/api/datetime_serializer_plugin.dart';
import 'package:flutter_app/model/article.dart';
import 'package:flutter_app/model/article_item_list.dart';
import 'package:flutter_app/model/deck_card.dart';
import 'package:flutter_app/model/media.dart';

part 'serializers.g.dart';

@SerializersFor(const [Article, Media, DeckCard, ArticleItemList])
final Serializers serializers = (_$serializers.toBuilder()
      //..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
