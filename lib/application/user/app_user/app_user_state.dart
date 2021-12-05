part of 'app_user_bloc.dart';

@freezed
class AppUserState with _$AppUserState {
  const factory AppUserState({
    required AppUser appUser,
    required bool isUpdating,
  }) = _AppUserState;
  const factory AppUserState.initial() = Initial;
}
