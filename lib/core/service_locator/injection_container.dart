// this is where resources are created and given access to others

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_example/core/network/news_api_service.dart';
import 'package:news_app_example/features/top_headlines/data/repositories_impl/news_repositories_impl.dart';
import 'package:news_app_example/features/top_headlines/domain/reporitories/news_repositories.dart';
import 'package:news_app_example/features/top_headlines/domain/usecases/get_top_headlines.dart';

final service_locator = GetIt.instance;

Future<void> initializeResources() async {
  service_locator.registerSingleton<Dio>(Dio());
  service_locator.registerSingleton(NewsApiService(service_locator<Dio>()));
  service_locator.registerSingleton<NewsRepositories>(
      NewsRepositoriesImpl(service_locator()));

  service_locator
      .registerLazySingleton(() => GetTopHeadlines(service_locator()));
}
