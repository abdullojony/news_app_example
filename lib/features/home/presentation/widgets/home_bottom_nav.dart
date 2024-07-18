import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app_example/features/home/presentation/riverpod/tab_provider.dart';

class HomeBottomNav extends ConsumerWidget {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(tabNotifierProvider);

    return NavigationBar(
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        shadowColor: Colors.black,
        height: 65,
        elevation: 5,
        selectedIndex: index,
        onDestinationSelected: (index) {
          ref.read(tabNotifierProvider.notifier).update((state) => index);
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home_rounded, size: 26), label: "home"),
          NavigationDestination(
              icon: Icon(Icons.category_rounded, size: 26), label: "saved"),
        ]);
  }
}
