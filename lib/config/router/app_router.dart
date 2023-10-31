import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
      ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreend.name,
      builder: (context, state) => ButtonsScreend(),
      ),
    GoRoute(
      path: '/cards',
      name: CardsScreend.name,
      builder: (context, state) => CardsScreend(),
      ),
  ],
);