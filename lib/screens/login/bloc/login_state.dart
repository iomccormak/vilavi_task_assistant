part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({required bool isAuthenticated}) = Initial;
  const factory LoginState.error({required String errorMessage}) = Error;
}
