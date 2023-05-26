import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api.dart';
import 'user.dart';


class AuthenticationNotifier extends AsyncNotifier<AuthenticationState> {
  AuthenticationNotifier(this.controller);

  final AuthenticationController controller;

  @override
  FutureOr<AuthenticationState> build() => controller.state;

  AsyncValue<AuthenticationState> get _dataState =>
    AsyncData(controller.state)
      .copyWithPrevious(state);

  AsyncValue<AuthenticationState> get _loadingState =>
    const AsyncLoading<AuthenticationState>()
      .copyWithPrevious(state);

  AsyncValue<AuthenticationState> _errorState(Object error, StackTrace stackTrace) =>
    AsyncError<AuthenticationState>(error, stackTrace)
      .copyWithPrevious(state);

  Future<T> execute<T>(
    FutureOr<T> Function(AuthenticationController controller) function,
  ) async {
    state = _loadingState;
    final result = await function(controller);
    state = _dataState;
    return result;
  }

  Future<bool> signIn({
    required String email,
    required String password,
  }) => execute(
    (controller) async {
      final response = await controller.signIn(
        email: email,
        password: password,
      );
      if (response case (true, final user?)) {
        ref.read(userProvider.notifier).setUser(user);
        return true;
      }
      return false;

      // await ref.read(userProvider.notifier).editUser(
      //   fullName: 'fake user',
      //   bio: 'fake bio',
      //   email: email,
      //   password: password,
      // );
    },
  );

  Future<bool> sendEmailCode({
    required String email,
  }) => execute(
    (controller) => controller.sendEmailCode(
      email: email,
    ),
  );

  Future<bool> signUp({
    required String fullName,
    required String email,
    required String code,
    required String password,
    String bio = '',
  }) => execute(
    (controller) async {
      final response = await controller.signUp(
        fullName: fullName,
        bio: bio,
        email: email,
        code: code,
        password: password,
      );
      if (response case (true, final user?)) {
        ref.read(userProvider.notifier).setUser(user);
        return true;
      }
      return false;
    },
  );

  bool signOut() {
    final result = controller.signOut();
    ref.read(userProvider.notifier).logoutUser();
    state = _dataState;
    return result;
  }
  // void setUser(UserInfo? user) {
  //   final result = controller.setUser(user);
  //   state = _dataState;
  //   ref.read(userProvider.notifier).setUser(user);
  //   return result;
  // }
}

final authenticationProvider = AsyncNotifierProvider<AuthenticationNotifier, AuthenticationState>(
  () => AuthenticationNotifier(authenticationController),
);
