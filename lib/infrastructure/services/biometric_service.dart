import 'package:local_auth/local_auth.dart'; // Add dependency

class BiometricService {
  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> authenticate() async =>
      await auth.authenticate(localizedReason: 'Authenticate');
}
