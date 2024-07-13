import 'package:news_app_example/features/top_headlines/domain/entities/article_entity.dart';

abstract class NewsRepositories {
  Future<List<ArticleEntity>> getTopHeadlines();
}
