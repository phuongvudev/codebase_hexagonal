
import 'package:codebase_hexagonal/app/modules/auth/adapter/auth_adapter.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/ports/load_user_port.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/ports/login_port.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/ports/logout_port.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/services/auth_service.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/usecases/load_user_use_case.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/usecases/login_use_case.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/usecases/logout_use_case.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AuthModule {
}