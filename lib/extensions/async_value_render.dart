import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


extension AsyncValueExtension<T> on AsyncValue<T> {
  Widget render(Widget Function(T data) builder, {
    void Function()? onRefresh,
    Widget Function()? loadingBuilder,
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
  }) => when(
    skipLoadingOnReload: skipLoadingOnReload,
    skipLoadingOnRefresh: skipLoadingOnRefresh,
    skipError: skipError,
    data: builder,
    error: (error, stackTrace) => Center(
      child: onRefresh == null
        ? Text('Error <$error>')
        : ElevatedButton(
          onPressed: onRefresh,
          child: Text('Refresh <$error>'),
        ),
    ),
    loading: loadingBuilder ?? () => const Center(
      child: CircularProgressIndicator(),
    ),
  );
}
