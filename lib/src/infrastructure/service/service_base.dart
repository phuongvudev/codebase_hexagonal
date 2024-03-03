
import 'dart:async';

import 'package:logging/logging.dart';

abstract base class ServiceBase {
  ServiceBase();


  Logger get logger => Logger(runtimeType.toString());


  void initialize();

  FutureOr onDispose();
}