import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app_example/features/top_headlines/presentation/pages/top_headlines.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(55),
                child: SafeArea(
                  child: Container(
                      alignment: Alignment.topCenter,
                      child: const Text("News App")),
                )),
            body: const TopHeadlines()));
  }
}
