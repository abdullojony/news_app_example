import 'package:news_app_example/config/constants.dart';
import 'package:news_app_example/core/network/news_api_service.dart';
import 'package:news_app_example/features/top_headlines/data/models/article_model.dart';
import 'package:news_app_example/features/top_headlines/domain/entities/article_entity.dart';
import 'package:news_app_example/features/top_headlines/domain/reporitories/news_repositories.dart';

class NewsRepositoriesImpl implements NewsRepositories {
  final NewsApiService _apiService;
  NewsRepositoriesImpl(this._apiService);

  @override
  Future<List<ArticleEntity>> getTopHeadlines() async {
    final httpResponse = await _apiService.getTopHeadlines(
        apiKey: apiKey, country: 'us', category: 'business');
    final articles = httpResponse.data['articles'] as List;
    return articles.map((e) => ArticleModel.fromJson(e)).toList();
  }
}
