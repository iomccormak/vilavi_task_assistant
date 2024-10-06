import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const Initial(isAuthenticated: false)) {
    on<Login>(_onLogin);
  }

  Future<void> _onLogin(
    Login event,
    Emitter<LoginState> emit,
  ) async {
    if (event.username.isNotEmpty && event.password.isNotEmpty) {
      if (event.username == 'test' && event.password == 'password') {
      } else {
        emit(
          const LoginState.error(
            errorMessage: 'No found user with given credentials',
          ),
        );
      }
    } else {
      emit(
        const LoginState.error(
          errorMessage: 'Fields should not be empty',
        ),
      );
    }
  }
}
