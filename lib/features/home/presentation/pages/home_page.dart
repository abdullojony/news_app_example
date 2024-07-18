import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app_example/features/home/presentation/riverpod/tab_provider.dart';
import 'package:news_app_example/features/home/presentation/widgets/home_bottom_nav.dart';
import 'package:news_app_example/features/top_headlines/presentation/pages/top_headlines.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(tabNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: index == 0
          ? const TopHeadlines()
          : const Center(
              child: Text("Saved"),
            ),
      bottomNavigationBar: const HomeBottomNav(),
    );
  }
}
