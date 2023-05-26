import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';


extension ThemeData on BuildContext {
  material.ThemeData get theme => Theme.of(this);
}
