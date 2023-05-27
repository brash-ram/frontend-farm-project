extension UnixTimestamp on DateTime {
  int get unixTimestamp => millisecondsSinceEpoch ~/ Duration.millisecondsPerSecond;
}
