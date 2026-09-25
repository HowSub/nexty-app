import 'package:go_router/go_router.dart';
import 'package:nexty/features/auth/presentation/screens/login_screen.dart';
import 'package:nexty/features/auth/presentation/screens/register_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/register', builder: (context, state) => RegisterScreen()),
  ],
);
