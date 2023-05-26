extension DateTimeExtension on DateTime? {
  DateTime get fallback => this ?? DateTime.fromMillisecondsSinceEpoch(0);
}
