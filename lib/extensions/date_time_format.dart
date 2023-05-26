import 'package:intl/intl.dart';


extension DateTimeFormat on DateTime {
  static final dateFormat = DateFormat.yMMMMd('ru_RU');

  String get format => dateFormat.format(this);
}
