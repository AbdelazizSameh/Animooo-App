import 'package:animoooa_app/features/auth/presentation/views/signup_view.dart';
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
      GoRoute(
        path: AppRoutes.signupRoute,
        builder: (context, state) => const SignupView(),
      ),
    ],
  );
}
