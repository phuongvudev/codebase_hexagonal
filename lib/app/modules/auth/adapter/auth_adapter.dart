import 'package:codebase_hexagonal/app/modules/auth/application/ports/load_user_port.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/ports/login_port.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/ports/logout_port.dart';
import 'package:codebase_hexagonal/src/adapter/adapter_base.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class AuthAdapter extends AdapterBase with LoadUserPort, LoginPort, LogoutPort {

  @override
  void loadUser() {
    // TODO: implement loadUser
  }

  @override
  void login(String email, String password) {
    // TODO: implement login
  }

  @override
  Future logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

}