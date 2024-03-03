import 'package:logging/logging.dart';

abstract base class AppServiceBase {
  Logger get logger => Logger(runtimeType.toString());

}