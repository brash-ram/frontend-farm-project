extension ListRemoveByValue<T> on List<T> {
  void removeByValue(Object? value) =>
    removeWhere((element) => element == value);
}
