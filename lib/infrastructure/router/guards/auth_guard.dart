import 'package:go_router/go_router.dart';

import '../../../common/utils/logger.dart';

GoRouterRedirect authGuard(GoRouterState state) {
  // Check if authenticated, redirect if not
  Logger.log('Auth guard checked');
  return null; // Stub
}
