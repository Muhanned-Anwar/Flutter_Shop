import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImplementation extends NetworkInfo {
  final InternetConnectionCheckerPlus _internetConnectionCheckerPlus;


  NetworkInfoImplementation(this._internetConnectionCheckerPlus);

  @override
  Future<bool> get isConnected => _internetConnectionCheckerPlus.hasConnection;
}