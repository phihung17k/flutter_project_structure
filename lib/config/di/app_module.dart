import 'package:flutter_project_structure/config/di/modules/auth_module.dart';
import 'package:get_it/get_it.dart';

class AppModule {
  static GetIt get _injector => GetIt.instance;

  static void register() {
    AuthModule.register(_injector);
  }
}
