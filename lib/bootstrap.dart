import 'dart:async';

import 'package:flutter/material.dart';

import 'app.dart';
import 'config/di/injection.dart';

Future<void> bootstrap() async {
  await configureDependencies();
  runApp(const App());
}
