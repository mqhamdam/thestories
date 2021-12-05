import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thestories/domain/app_user/app_user.dart';
import 'package:thestories/domain/auth/i_auth_facade.dart';

part 'app_user_event.dart';
part 'app_user_state.dart';
part 'app_user_bloc.freezed.dart';

class AppUserBloc extends Bloc<AppUserEvent, AppUserState> {
  AppUserBloc({
    required this.authFacade,
    required this.userAuthID,
  }) : super(AppUserState.initial()) {
    on<AppUserEvent>((event, emit) async {
      event.map(
        started: (event) {},
        updateData: (event) {},
        subscribe: (event) {}, 
        getUserData: ( event) {},
      );
    });
  }

  final IAuthFacade authFacade;
  final int userAuthID;
}
