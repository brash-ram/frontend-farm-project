import 'package:flutter/material.dart';

import '../l10n.dart';


extension Localizations on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;
}
