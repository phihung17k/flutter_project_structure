import 'package:flutter/material.dart';
import 'package:flutter_project_structure/config/di/app_module.dart';
import 'infrastructure/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppModule.register();

  runApp(
    MaterialApp.router(
      title: 'Flutter Clean App',
      routerConfig: appRouter,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      debugShowCheckedModeBanner: false,
    ),
  );
}
