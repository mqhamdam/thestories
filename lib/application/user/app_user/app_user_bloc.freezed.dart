// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppUserEventTearOff {
  const _$AppUserEventTearOff();

  _Started started() {
    return const _Started();
  }

  UserDataUpdated updateData(AppUser appUser) {
    return UserDataUpdated(
      appUser,
    );
  }

  Subscribe subscribe() {
    return const Subscribe();
  }

  GetUserData getUserData() {
    return const GetUserData();
  }
}

/// @nodoc
const $AppUserEvent = _$AppUserEventTearOff();

/// @nodoc
mixin _$AppUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppUser appUser) updateData,
    required TResult Function() subscribe,
    required TResult Function() getUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserDataUpdated value) updateData,
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(GetUserData value) getUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserEventCopyWith<$Res> {
  factory $AppUserEventCopyWith(
          AppUserEvent value, $Res Function(AppUserEvent) then) =
      _$AppUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppUserEventCopyWithImpl<$Res> implements $AppUserEventCopyWith<$Res> {
  _$AppUserEventCopyWithImpl(this._value, this._then);

  final AppUserEvent _value;
  // ignore: unused_field
  final $Res Function(AppUserEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AppUserEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppUserEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppUser appUser) updateData,
    required TResult Function() subscribe,
    required TResult Function() getUserData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserDataUpdated value) updateData,
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(GetUserData value) getUserData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppUserEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $UserDataUpdatedCopyWith<$Res> {
  factory $UserDataUpdatedCopyWith(
          UserDataUpdated value, $Res Function(UserDataUpdated) then) =
      _$UserDataUpdatedCopyWithImpl<$Res>;
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class _$UserDataUpdatedCopyWithImpl<$Res>
    extends _$AppUserEventCopyWithImpl<$Res>
    implements $UserDataUpdatedCopyWith<$Res> {
  _$UserDataUpdatedCopyWithImpl(
      UserDataUpdated _value, $Res Function(UserDataUpdated) _then)
      : super(_value, (v) => _then(v as UserDataUpdated));

  @override
  UserDataUpdated get _value => super._value as UserDataUpdated;

  @override
  $Res call({
    Object? appUser = freezed,
  }) {
    return _then(UserDataUpdated(
      appUser == freezed
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc

class _$UserDataUpdated implements UserDataUpdated {
  const _$UserDataUpdated(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'AppUserEvent.updateData(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDataUpdated &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser);

  @JsonKey(ignore: true)
  @override
  $UserDataUpdatedCopyWith<UserDataUpdated> get copyWith =>
      _$UserDataUpdatedCopyWithImpl<UserDataUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppUser appUser) updateData,
    required TResult Function() subscribe,
    required TResult Function() getUserData,
  }) {
    return updateData(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
  }) {
    return updateData?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserDataUpdated value) updateData,
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(GetUserData value) getUserData,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class UserDataUpdated implements AppUserEvent {
  const factory UserDataUpdated(AppUser appUser) = _$UserDataUpdated;

  AppUser get appUser;
  @JsonKey(ignore: true)
  $UserDataUpdatedCopyWith<UserDataUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribeCopyWith<$Res> {
  factory $SubscribeCopyWith(Subscribe value, $Res Function(Subscribe) then) =
      _$SubscribeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscribeCopyWithImpl<$Res> extends _$AppUserEventCopyWithImpl<$Res>
    implements $SubscribeCopyWith<$Res> {
  _$SubscribeCopyWithImpl(Subscribe _value, $Res Function(Subscribe) _then)
      : super(_value, (v) => _then(v as Subscribe));

  @override
  Subscribe get _value => super._value as Subscribe;
}

/// @nodoc

class _$Subscribe implements Subscribe {
  const _$Subscribe();

  @override
  String toString() {
    return 'AppUserEvent.subscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Subscribe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppUser appUser) updateData,
    required TResult Function() subscribe,
    required TResult Function() getUserData,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
  }) {
    return subscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserDataUpdated value) updateData,
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(GetUserData value) getUserData,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class Subscribe implements AppUserEvent {
  const factory Subscribe() = _$Subscribe;
}

/// @nodoc
abstract class $GetUserDataCopyWith<$Res> {
  factory $GetUserDataCopyWith(
          GetUserData value, $Res Function(GetUserData) then) =
      _$GetUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserDataCopyWithImpl<$Res> extends _$AppUserEventCopyWithImpl<$Res>
    implements $GetUserDataCopyWith<$Res> {
  _$GetUserDataCopyWithImpl(
      GetUserData _value, $Res Function(GetUserData) _then)
      : super(_value, (v) => _then(v as GetUserData));

  @override
  GetUserData get _value => super._value as GetUserData;
}

/// @nodoc

class _$GetUserData implements GetUserData {
  const _$GetUserData();

  @override
  String toString() {
    return 'AppUserEvent.getUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AppUser appUser) updateData,
    required TResult Function() subscribe,
    required TResult Function() getUserData,
  }) {
    return getUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
  }) {
    return getUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AppUser appUser)? updateData,
    TResult Function()? subscribe,
    TResult Function()? getUserData,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(UserDataUpdated value) updateData,
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(GetUserData value) getUserData,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(UserDataUpdated value)? updateData,
    TResult Function(Subscribe value)? subscribe,
    TResult Function(GetUserData value)? getUserData,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class GetUserData implements AppUserEvent {
  const factory GetUserData() = _$GetUserData;
}

/// @nodoc
class _$AppUserStateTearOff {
  const _$AppUserStateTearOff();

  _AppUserState call({required AppUser appUser, required bool isUpdating}) {
    return _AppUserState(
      appUser: appUser,
      isUpdating: isUpdating,
    );
  }

  Initial initial() {
    return const Initial();
  }
}

/// @nodoc
const $AppUserState = _$AppUserStateTearOff();

/// @nodoc
mixin _$AppUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AppUser appUser, bool isUpdating) $default, {
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AppUser appUser, bool isUpdating)? $default, {
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AppUser appUser, bool isUpdating)? $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppUserState value) $default, {
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppUserState value)? $default, {
    TResult Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppUserState value)? $default, {
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserStateCopyWith<$Res> {
  factory $AppUserStateCopyWith(
          AppUserState value, $Res Function(AppUserState) then) =
      _$AppUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppUserStateCopyWithImpl<$Res> implements $AppUserStateCopyWith<$Res> {
  _$AppUserStateCopyWithImpl(this._value, this._then);

  final AppUserState _value;
  // ignore: unused_field
  final $Res Function(AppUserState) _then;
}

/// @nodoc
abstract class _$AppUserStateCopyWith<$Res> {
  factory _$AppUserStateCopyWith(
          _AppUserState value, $Res Function(_AppUserState) then) =
      __$AppUserStateCopyWithImpl<$Res>;
  $Res call({AppUser appUser, bool isUpdating});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$AppUserStateCopyWithImpl<$Res> extends _$AppUserStateCopyWithImpl<$Res>
    implements _$AppUserStateCopyWith<$Res> {
  __$AppUserStateCopyWithImpl(
      _AppUserState _value, $Res Function(_AppUserState) _then)
      : super(_value, (v) => _then(v as _AppUserState));

  @override
  _AppUserState get _value => super._value as _AppUserState;

  @override
  $Res call({
    Object? appUser = freezed,
    Object? isUpdating = freezed,
  }) {
    return _then(_AppUserState(
      appUser: appUser == freezed
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      isUpdating: isUpdating == freezed
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc

class _$_AppUserState implements _AppUserState {
  const _$_AppUserState({required this.appUser, required this.isUpdating});

  @override
  final AppUser appUser;
  @override
  final bool isUpdating;

  @override
  String toString() {
    return 'AppUserState(appUser: $appUser, isUpdating: $isUpdating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUserState &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser, isUpdating);

  @JsonKey(ignore: true)
  @override
  _$AppUserStateCopyWith<_AppUserState> get copyWith =>
      __$AppUserStateCopyWithImpl<_AppUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AppUser appUser, bool isUpdating) $default, {
    required TResult Function() initial,
  }) {
    return $default(appUser, isUpdating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AppUser appUser, bool isUpdating)? $default, {
    TResult Function()? initial,
  }) {
    return $default?.call(appUser, isUpdating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AppUser appUser, bool isUpdating)? $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(appUser, isUpdating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppUserState value) $default, {
    required TResult Function(Initial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppUserState value)? $default, {
    TResult Function(Initial value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppUserState value)? $default, {
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AppUserState implements AppUserState {
  const factory _AppUserState(
      {required AppUser appUser, required bool isUpdating}) = _$_AppUserState;

  AppUser get appUser;
  bool get isUpdating;
  @JsonKey(ignore: true)
  _$AppUserStateCopyWith<_AppUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AppUserStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AppUserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AppUser appUser, bool isUpdating) $default, {
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AppUser appUser, bool isUpdating)? $default, {
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AppUser appUser, bool isUpdating)? $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppUserState value) $default, {
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AppUserState value)? $default, {
    TResult Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppUserState value)? $default, {
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AppUserState {
  const factory Initial() = _$Initial;
}
