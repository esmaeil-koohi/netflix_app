import 'dart:async';

abstract class NetworkInfo{
  FutureOr<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo{

  @override
  FutureOr<bool> get isConnected => true;

}

