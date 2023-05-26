extension MapPath on Map<String, dynamic> {
  T? getPath<T>(String path) {
    final [ current, ...rest, ] = path.split('.');
    final value = this[current];
    if (value != null) {
      if (rest.isEmpty) {
        if (value is T)
          return value;
      } else if (value is Map<String, dynamic>)
        return value.getPath(rest.join('.'));
    }
    return null;
  }
}
