import 'package:flutter/material.dart';
import 'package:news_app_example/features/top_headlines/domain/entities/article_entity.dart';

class NewsItem extends StatelessWidget {
  const NewsItem(this.article, {super.key});
  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: article.urlToImage != null
            ? Image.network(
                article.urlToImage!,
                width: 80,
                height: 80,
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.no_accounts),
                fit: BoxFit.cover,
              )
            : Icon(Icons.no_accounts),
        title: Text(
          article.title ?? 'No Title',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.description ?? 'No Description',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
