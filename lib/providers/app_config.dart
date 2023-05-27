import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';


class AppConfig {
  const AppConfig({
    required this.locale,
    required this.brightness,
  });

  final Locale locale;
  final Brightness brightness;

  AppConfig copyWith({
    Locale? locale,
    Brightness? brightness,
  }) => AppConfig(
    locale: locale ?? this.locale,
    brightness: brightness ?? this.brightness,
  );
}


class AppConfigNotifier extends StateNotifier<AppConfig> {
  // We initialize the list of todos to an empty list
  AppConfigNotifier() : super(
    const AppConfig(
      brightness: Brightness.light,
      locale: Locale('en'),
    ),
  );

  void setBrightness(Brightness brightness) =>
    state = state.copyWith(brightness: brightness);

  void setLocale(Locale locale) =>
    state = state.copyWith(locale: locale);
}

final appConfigNotifierProvider = StateNotifierProvider<AppConfigNotifier, AppConfig>(
  (ref) => AppConfigNotifier(),
);
