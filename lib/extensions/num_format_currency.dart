import 'package:intl/intl.dart';


extension NumFormatCurrency<T extends num> on T {
  static final currencyFormat = NumberFormat.currency(locale: 'ru_RU');

  String get formatCurrency => currencyFormat.format(this);
}
