import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:news_app_example/features/top_headlines/data/models/article_model.dart';

part 'serializer.g.dart';

@SerializersFor([
  ArticleModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
