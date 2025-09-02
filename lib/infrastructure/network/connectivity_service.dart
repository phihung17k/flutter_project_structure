import 'package:connectivity_plus/connectivity_plus.dart'; // Add dependency if needed

class ConnectivityService {
  Future<bool> isConnected() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}
