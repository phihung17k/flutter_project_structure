import 'package:injectable/injectable.dart';

import '../../infrastructure/storage/secure_storage.dart';

@module
abstract class StorageModule {
  @lazySingleton
  SecureStorage get secureStorage => SecureStorage();
}
