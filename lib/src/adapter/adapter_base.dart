import 'package:logging/logging.dart';

abstract base class AdapterBase {
  Logger get logger => Logger(runtimeType.toString());
}
