import 'package:dartz/dartz.dart';
import 'package:thestories/domain/app_user/app_user_failure.dart';

abstract class IAppUserRepository {
  Future<Either<AppUserFailure, Unit>> updateUserData();
  Future<Either<AppUserFailure, Unit>> getUserData();
  Future<Either<AppUserFailure, Unit>> subscribeToUser();
  Future<Either<AppUserFailure, Unit>> sendSubscribeRequestoToUser();
  Future<Either<AppUserFailure, Unit>> unsubscribeFromUser();
}
