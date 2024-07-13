import 'package:flutter/material.dart';
import 'package:news_app_example/features/top_headlines/domain/entities/article_entity.dart';
import 'package:news_app_example/features/top_headlines/presentation/widgets/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articles});
  final List<ArticleEntity> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) => NewsItem(articles[index]),
    );
  }
}
