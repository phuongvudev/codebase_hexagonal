
import 'package:permission_handler/permission_handler.dart';

mixin PermissionRequestHandler {
  Future<PermissionStatus> request();

  Future<PermissionStatus> status();

  void onDenied();

  void onForceDenied();

  void openSettings();

}