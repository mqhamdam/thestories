part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.emailChanged(String email) = EmailChanged;
  const factory SignupEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignupEvent.signUpWithEmailAndPassword() =
      SignUpWithEmailAndPassword;
}
