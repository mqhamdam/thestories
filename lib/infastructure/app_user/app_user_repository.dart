import 'dart:convert';
import 'dart:io';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:thestories/domain/app_user/app_user.dart';
import 'package:thestories/domain/app_user/app_user_failure.dart';
import 'package:thestories/domain/app_user/i_app_user_repository.dart';
import 'package:thestories/infastructure/app_user/app_user_dtos.dart';

@lazySingleton
class AppUserRepository implements IAppUserRepository {
  const AppUserRepository(this._cloudFunctions);

  @override
  Future<Either<AppUserFailure, AppUser>> getUserData() async {
    final uri = Uri.parse(
        "https://us-central1-thestories-6e6c6.cloudfunctions.net/users");
    try {
      return await http.get(uri).then(
            (value) => right<AppUserFailure, AppUser>(
                AppUserDto.fromJson(jsonDecode(value.body)).toDomain()),
          );
    } on HttpException catch (e) {
      return left(const AppUserFailure.unexpected());
    }
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
  Future<Either<AppUserFailure, Unit>> updateUserData() async {
    final uri = Uri.parse(
        "https://us-central1-thestories-6e6c6.cloudfunctions.net/users");
    try {
      await http.get(uri);
      return right(unit);
    } on Exception catch (e) {
      return left(const AppUserFailure.unexpected());
    }
  }

  final FirebaseFunctions _cloudFunctions;
}
