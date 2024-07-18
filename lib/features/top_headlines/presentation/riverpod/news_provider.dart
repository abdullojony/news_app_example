import 'package:news_app_example/core/service_locator/injection_container.dart';
import 'package:news_app_example/features/top_headlines/domain/entities/article_entity.dart';
import 'package:news_app_example/features/top_headlines/domain/usecases/get_top_headlines.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_provider.g.dart';

// automatic loading, error, success state control
@riverpod
Future<List<ArticleEntity>> news(NewsRef ref) async {
  return await service_locator<GetTopHeadlines>()();
}
