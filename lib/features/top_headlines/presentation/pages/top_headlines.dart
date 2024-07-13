import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app_example/features/top_headlines/presentation/riverpod/news_provider.dart';
import 'package:news_app_example/features/top_headlines/presentation/widgets/news_list.dart';

class TopHeadlines extends ConsumerWidget {
  const TopHeadlines({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articles = ref.watch(newsProvider);
    return articles.when(
        data: (articles) => NewsList(articles: articles),
        error: (e, s) => Center(child: Text(e.toString())),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
