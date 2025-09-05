import 'package:flutter_project_structure/infrastructure/router/route_names.dart';
import 'package:go_router/go_router.dart';

import '../../features/authentication/presentation/pages/login_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import 'guards/auth_guard.dart';
// Add other pages

final appRouter = GoRouter(
  initialLocation: RouteNames.init,
  // redirect: authGuard,
  routes: [
    GoRoute(
      path: RouteNames.init,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: RouteNames.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: RouteNames.dashboard,
      builder: (context, state) => const DashboardPage(),
    ),
    // GoRoute(
    // path: RouteNames.admin,
    // builder: (context, state) => const AdminPage(),
    // redirect: (context, state) async {
    //   final isAdmin = await GetIt.instance<AuthBloc>().isAdmin();
    //   if (!isAdmin) {
    //     return RoutePaths.dashboard; // Redirect non-admins to DashboardPage
    //   }
    //   return null; // Allow admins to access AdminPage
    // },
    // ),
  ],
);
