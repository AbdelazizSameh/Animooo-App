import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../constants/app_routes.dart';

abstract class AppRouter {
  static GoRouter routerConfig = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.loginRoute,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
