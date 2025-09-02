import 'environment.dart';

class AppConfig {
  static String get apiBaseUrl {
    return Environment.current == Environment.dev
        ? 'https://dev.api.com'
        : 'https://prod.api.com';
  }
}
