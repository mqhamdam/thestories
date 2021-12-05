part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.authStateChanged() = AuthStateChanged;
  const factory AuthEvent.signedOut() = AuthSignedOut;
  const factory AuthEvent.authStateCheckRequested() = AuthStatecheckRequested;
}