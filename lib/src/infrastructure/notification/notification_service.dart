import 'package:logging/logging.dart';

abstract base class NotificationService {
  Logger get logger => Logger(runtimeType.toString());

  Future<void> subscribeCategory(String category);

  Future<void> unsubscribeCategory(String category);

  Future<String?> getToken();
}
