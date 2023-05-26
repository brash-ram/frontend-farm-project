extension StringFallback on String? {
  String get fallback => this ?? '<MISSING DATA>';
}
