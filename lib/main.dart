import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:two_thousand_forty_eight_game/common/routing.dart';

void main() {
  runApp(
    const ProviderScope(
      child: _MyApp(),
    ),
  );
}

class _MyApp extends ConsumerWidget {
  const _MyApp();

  @override 
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: '2048',
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
