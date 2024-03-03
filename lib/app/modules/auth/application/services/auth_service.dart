import 'package:codebase_hexagonal/app/modules/auth/application/command/login_command.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/ports/load_user_port.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/ports/login_port.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/ports/logout_port.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/usecases/load_user_use_case.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/usecases/login_use_case.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/usecases/logout_use_case.dart';

import 'package:codebase_hexagonal/src/application/services/app_service_base.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class AuthService extends AppServiceBase
    with LoadUserUseCase, LoginUseCase, LogoutUseCase {

  final LoginPort _loginPort;
  final LogoutPort _logoutPort;
  final LoadUserPort _loadUserPort;

  AuthService(this._loginPort, this._logoutPort, this._loadUserPort);

  @override
  Future logout() {
    return _logoutPort.logout();
  }
  @override
  void login(LoginCommand command) {
    _loginPort.login(command.email, command.password);
  }
  @override
  void loadUser() {
    _loadUserPort.loadUser();
  }
}
