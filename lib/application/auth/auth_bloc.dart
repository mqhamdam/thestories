import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thestories/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authFacade) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      event.map(
        started: (event) async* {
          yield _authFacade.authStateChanges().listen((event) {
            if (event != null) {
              emit(const AuthState.authenticated());
            } else {
              emit(const AuthState.unauthenticated());
            }
          });
        },
        authStateChanged: (event) async* {},
        signedOut: (event) async {
          await _authFacade.signOut();
          emit(const AuthState.unauthenticated());
        },
        authStateCheckRequested: (event) async* {
          final currentUser = await _authFacade.getCurrentUser();
          if (currentUser != null) {
            emit(const AuthState.authenticated());
          } else {
            emit(const AuthState.unauthenticated());
          }
        },
      );
    });
  }

  final IAuthFacade _authFacade;
}
