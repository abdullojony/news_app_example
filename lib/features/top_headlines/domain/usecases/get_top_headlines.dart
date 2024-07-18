import 'package:news_app_example/features/top_headlines/domain/entities/article_entity.dart';
import 'package:news_app_example/features/top_headlines/domain/reporitories/news_repositories.dart';

class GetTopHeadlines {
  final NewsRepositories _repositories;
  GetTopHeadlines(this._repositories); // allows injection

  Future<List<ArticleEntity>> call() {
    return _repositories.getTopHeadlines();
  }
}
