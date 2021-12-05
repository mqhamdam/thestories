import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:thestories/domain/app_user/app_user_failure.dart';
import 'package:thestories/domain/app_user/i_app_user_repository.dart';
import 'package:http/http.dart' as http;

@lazySingleton
class AppUserRepository implements IAppUserRepository {
  const AppUserRepository(this._cloudFunctions);

  @override
  Future<Either<AppUserFailure, Unit>> getUserData()  {
    // TODO: implement sendSubscribeRequestoToUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AppUserFailure, Unit>> sendSubscribeRequestoToUser() {
    // TODO: implement sendSubscribeRequestoToUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AppUserFailure, Unit>> subscribeToUser() {
    // TODO: implement subscribeToUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AppUserFailure, Unit>> unsubscribeFromUser() {
    // TODO: implement unsubscribeFromUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AppUserFailure, Unit>> updateUserData() {
    // TODO: implement updateUserData
    throw UnimplementedError();
  }

  final FirebaseFunctions _cloudFunctions;
}
