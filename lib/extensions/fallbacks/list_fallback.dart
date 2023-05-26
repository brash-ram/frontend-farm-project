extension ListFallback<T> on List<T>? {
  List<T> get fallback => this ?? [];
}
