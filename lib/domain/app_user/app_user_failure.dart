import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_failure.freezed.dart';

@freezed
abstract class AppUserFailure with _$AppUserFailure {
  const factory AppUserFailure.unexpected() = Unexpected;
  const factory AppUserFailure.unableToUpdateUserData() =
      UnableToUpdateUserData;
  const factory AppUserFailure.permissionDenied() = PermissionDenied;
}
