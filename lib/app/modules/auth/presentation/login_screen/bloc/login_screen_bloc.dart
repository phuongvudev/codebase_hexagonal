import 'dart:async';

import 'package:codebase_hexagonal/app/modules/auth/application/usecases/load_user_use_case.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/usecases/login_use_case.dart';
import 'package:codebase_hexagonal/app/modules/auth/application/usecases/logout_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'login_screen_event.dart';

part 'login_screen_state.dart';

@injectable
class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;
  final LoadUserUseCase _loadUserUseCase;

  LoginScreenBloc(
      this._loginUseCase, this._logoutUseCase, this._loadUserUseCase)
      : super(LoginScreenInitial()) {
    on<LoginScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
