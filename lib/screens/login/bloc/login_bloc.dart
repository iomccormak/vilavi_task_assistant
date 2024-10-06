import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vilavi_task_assistant/utils/app_strings.dart';
import 'package:vilavi_task_assistant/utils/login_values.dart';

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
      if (event.username == LoginValues.username &&
          event.password == LoginValues.password) {
        emit(const LoginState.initial(isAuthenticated: true));
      } else {
        emit(const LoginState.error(errorMessage: AppStrings.noFoundUser));
      }
    } else {
      emit(const LoginState.error(
          errorMessage: AppStrings.fieldsShouldNotBeEmpty));
    }
  }
}
