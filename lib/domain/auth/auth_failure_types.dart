import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure_types.freezed.dart';

@freezed
abstract class AuthFailureTypes with _$AuthFailureTypes {
  const factory AuthFailureTypes.serverError() = ServerError;
  const factory AuthFailureTypes.emailAlreadyRegistered() =
      EmailAlreadyRegistered;
  const factory AuthFailureTypes.invalidPasswordorEmail() =
      invalidPasswordorEmail;
}
