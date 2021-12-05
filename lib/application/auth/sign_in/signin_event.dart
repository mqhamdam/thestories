part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {
 const factory SigninEvent.emailChanged(String email) = EmailChanged;
  const factory SigninEvent.passwordChanged(String password) = PasswordChanged;
  const factory SigninEvent.signUpWithEmailAndPassword() =
      SignUpWithEmailAndPassword;
}