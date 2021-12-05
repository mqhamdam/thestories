part of 'app_user_bloc.dart';

@freezed
class AppUserEvent with _$AppUserEvent {
  const factory AppUserEvent.started() = _Started;
  const factory AppUserEvent.updateData(AppUser appUser) = UserDataUpdated;
  const factory AppUserEvent.subscribe() = Subscribe;
  const factory AppUserEvent.getUserData() = GetUserData;
}
