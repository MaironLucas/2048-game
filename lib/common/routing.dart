import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:two_thousand_forty_eight_game/presentation/home/home_page.dart';

const _slash = '/';
const _homePage = 'home';

const _homePath = _slash + _homePage;

final goRouterProvider = Provider.autoDispose<GoRouter>((ref) {
  return GoRouter(
    initialLocation: _homePath,
    routes: [
      GoRoute(
        path: _homePath,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
});