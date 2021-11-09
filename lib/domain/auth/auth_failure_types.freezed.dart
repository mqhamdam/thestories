// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTypesTearOff {
  const _$AuthFailureTypesTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  EmailAlreadyRegistered emailAlreadyRegistered() {
    return const EmailAlreadyRegistered();
  }

  invalidPasswordorEmail invalidPasswordorEmail() {
    return const invalidPasswordorEmail();
  }
}

/// @nodoc
const $AuthFailureTypes = _$AuthFailureTypesTearOff();

/// @nodoc
mixin _$AuthFailureTypes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() invalidPasswordorEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? invalidPasswordorEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? invalidPasswordorEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(invalidPasswordorEmail value)
        invalidPasswordorEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(invalidPasswordorEmail value)? invalidPasswordorEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(invalidPasswordorEmail value)? invalidPasswordorEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureTypesCopyWith<$Res> {
  factory $AuthFailureTypesCopyWith(
          AuthFailureTypes value, $Res Function(AuthFailureTypes) then) =
      _$AuthFailureTypesCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureTypesCopyWithImpl<$Res>
    implements $AuthFailureTypesCopyWith<$Res> {
  _$AuthFailureTypesCopyWithImpl(this._value, this._then);

  final AuthFailureTypes _value;
  // ignore: unused_field
  final $Res Function(AuthFailureTypes) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$AuthFailureTypesCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailureTypes.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() invalidPasswordorEmail,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? invalidPasswordorEmail,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? invalidPasswordorEmail,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(invalidPasswordorEmail value)
        invalidPasswordorEmail,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(invalidPasswordorEmail value)? invalidPasswordorEmail,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(invalidPasswordorEmail value)? invalidPasswordorEmail,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailureTypes {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailAlreadyRegisteredCopyWith<$Res> {
  factory $EmailAlreadyRegisteredCopyWith(EmailAlreadyRegistered value,
          $Res Function(EmailAlreadyRegistered) then) =
      _$EmailAlreadyRegisteredCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyRegisteredCopyWithImpl<$Res>
    extends _$AuthFailureTypesCopyWithImpl<$Res>
    implements $EmailAlreadyRegisteredCopyWith<$Res> {
  _$EmailAlreadyRegisteredCopyWithImpl(EmailAlreadyRegistered _value,
      $Res Function(EmailAlreadyRegistered) _then)
      : super(_value, (v) => _then(v as EmailAlreadyRegistered));

  @override
  EmailAlreadyRegistered get _value => super._value as EmailAlreadyRegistered;
}

/// @nodoc

class _$EmailAlreadyRegistered implements EmailAlreadyRegistered {
  const _$EmailAlreadyRegistered();

  @override
  String toString() {
    return 'AuthFailureTypes.emailAlreadyRegistered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyRegistered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() invalidPasswordorEmail,
  }) {
    return emailAlreadyRegistered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? invalidPasswordorEmail,
  }) {
    return emailAlreadyRegistered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? invalidPasswordorEmail,
    required TResult orElse(),
  }) {
    if (emailAlreadyRegistered != null) {
      return emailAlreadyRegistered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(invalidPasswordorEmail value)
        invalidPasswordorEmail,
  }) {
    return emailAlreadyRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(invalidPasswordorEmail value)? invalidPasswordorEmail,
  }) {
    return emailAlreadyRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(invalidPasswordorEmail value)? invalidPasswordorEmail,
    required TResult orElse(),
  }) {
    if (emailAlreadyRegistered != null) {
      return emailAlreadyRegistered(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyRegistered implements AuthFailureTypes {
  const factory EmailAlreadyRegistered() = _$EmailAlreadyRegistered;
}

/// @nodoc
abstract class $invalidPasswordorEmailCopyWith<$Res> {
  factory $invalidPasswordorEmailCopyWith(invalidPasswordorEmail value,
          $Res Function(invalidPasswordorEmail) then) =
      _$invalidPasswordorEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$invalidPasswordorEmailCopyWithImpl<$Res>
    extends _$AuthFailureTypesCopyWithImpl<$Res>
    implements $invalidPasswordorEmailCopyWith<$Res> {
  _$invalidPasswordorEmailCopyWithImpl(invalidPasswordorEmail _value,
      $Res Function(invalidPasswordorEmail) _then)
      : super(_value, (v) => _then(v as invalidPasswordorEmail));

  @override
  invalidPasswordorEmail get _value => super._value as invalidPasswordorEmail;
}

/// @nodoc

class _$invalidPasswordorEmail implements invalidPasswordorEmail {
  const _$invalidPasswordorEmail();

  @override
  String toString() {
    return 'AuthFailureTypes.invalidPasswordorEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is invalidPasswordorEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() invalidPasswordorEmail,
  }) {
    return invalidPasswordorEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? invalidPasswordorEmail,
  }) {
    return invalidPasswordorEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? invalidPasswordorEmail,
    required TResult orElse(),
  }) {
    if (invalidPasswordorEmail != null) {
      return invalidPasswordorEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(invalidPasswordorEmail value)
        invalidPasswordorEmail,
  }) {
    return invalidPasswordorEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(invalidPasswordorEmail value)? invalidPasswordorEmail,
  }) {
    return invalidPasswordorEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(invalidPasswordorEmail value)? invalidPasswordorEmail,
    required TResult orElse(),
  }) {
    if (invalidPasswordorEmail != null) {
      return invalidPasswordorEmail(this);
    }
    return orElse();
  }
}

abstract class invalidPasswordorEmail implements AuthFailureTypes {
  const factory invalidPasswordorEmail() = _$invalidPasswordorEmail;
}
