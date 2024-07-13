import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:news_app_example/core/serializer/serializer.dart';
import 'package:news_app_example/features/top_headlines/domain/entities/article_entity.dart';

part 'article_model.g.dart';

abstract class ArticleModel
    implements ArticleEntity, Built<ArticleModel, ArticleModelBuilder> {
  @override
  String? get author;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get urlToImage;
  @override
  String? get publishedAt;
  @override
  String? get content;

  ArticleModel._();

  factory ArticleModel([Function(ArticleModelBuilder b) updates]) =
      _$ArticleModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ArticleModel.serializer, this));
  }

  static ArticleEntity fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ArticleModel.serializer, json)!;
  }

  static Serializer<ArticleModel> get serializer => _$articleModelSerializer;
}
