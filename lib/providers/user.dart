import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api.dart';
import '../providers.dart';


class UserNotifier extends AsyncNotifier<UserInfo?> {
  UserNotifier();

  @override
  FutureOr<UserInfo?> build() => UserInfo(
    id: -1,
    fullName: '<NO DATA>',
    bio: '',
    email: 'missing@e.mail',
    dateRegistration: 0,
    roles: [],
  );

  AsyncValue<UserInfo?> _dataState(UserInfo? user) =>
    AsyncData(user)
      .copyWithPrevious(state);

  AsyncValue<UserInfo?> _errorState(Object error, StackTrace stackTrace) =>
    AsyncError<UserInfo?>(error, stackTrace)
      .copyWithPrevious(state);

  AsyncValue<UserInfo?> get _loadingState =>
    const AsyncLoading<UserInfo?>()
      .copyWithPrevious(state);

  void setUser(UserInfo? user) {
    state = _dataState(user);
  }

  Future<UserInfo?> execute(
    FutureOr<UserInfo?> Function() function,
  ) async {
    state = _loadingState;
    try {
      final result = await function();
      state = _dataState(result);
      return result;
    } catch(error, stackTrace) {
      state = _errorState(error, stackTrace);
      return null;
    }
  }

  Future<bool> editUser({
    String? fullName,
    String? bio,
    String? email,
    // String? password,
  }) async => await execute(() async {
    final current = state;
    if (current.asData == null || !current.asData!.hasValue)
      return null;
    final value = current.asData!.value;

    final response = await apiClient.apiAuthChangeUpdatePost(
      body: UpdateUserRequest(
        id: value?.id ?? -1,
        fullName: fullName ?? value?.fullName ?? 'INVALID',
        bio: bio ?? value?.bio ?? 'INVALID',
        email: email ?? value?.email ?? 'invalid@e.mail',
      ),
    );
    // if (!response.isSuccessful)
    //   throw Exception('ERROR: ${response.statusCode}');
    final user = response.body;
    return user;
  }) != null;

  void logoutUser() => state = _dataState(null);
}

final userProvider = AsyncNotifierProvider<UserNotifier, UserInfo?>(
  UserNotifier.new,
);
