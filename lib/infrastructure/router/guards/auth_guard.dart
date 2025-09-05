import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/utils/logger.dart';

GoRouterRedirect authGuard = (BuildContext context, GoRouterState state) {
  // Check if authenticated, redirect if not
  Logger.log('Auth guard checked');
  return Future.value(null); // Stub
};
