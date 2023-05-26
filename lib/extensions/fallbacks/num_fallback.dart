extension NumbersExtension<T extends num> on T? {
  T get fallback => switch(T) {
    int => this ?? 0 as T ,
    double => this ?? 0.0 as T ,
    _ => throw UnsupportedError('Unsupported type.'),
  };
}
