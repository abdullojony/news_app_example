import 'package:dio/dio.dart';
import 'package:news_app_example/core/network/news_api_service.dart';
import 'package:news_app_example/features/top_headlines/data/repositories_impl/news_repositories_impl.dart';
import 'package:news_app_example/features/top_headlines/domain/entities/article_entity.dart';
import 'package:news_app_example/features/top_headlines/domain/usecases/get_top_headlines.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_provider.g.dart';

@riverpod
Future<List<ArticleEntity>> news(NewsRef ref) async {
  return await GetTopHeadlines(NewsRepositoriesImpl(NewsApiService(Dio())))();
}
