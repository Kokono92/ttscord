/// Generic wrapper that threads origin context through transformations.
class WithOrigin<T> {
  final Uri origin;
  final T value;

  const WithOrigin(this.origin, this.value);

  /// Transform value while preserving origin.
  WithOrigin<U> map<U>(U Function(Uri, T) f) =>
      WithOrigin(origin, f(origin, value));

  /// Apply origin-aware operation; result must include origin.
  WithOrigin<U> flatMap<U>(WithOrigin<U> Function(Uri, T) f) =>
      f(origin, value);

  /// Apply origin-aware side effect; return self for chaining.
  WithOrigin<T> tap(void Function(Uri, T) f) {
    f(origin, value);
    return this;
  }

  /// Extract origin and value.
  R when<R>(R Function(Uri, T) f) => f(origin, value);
}

extension WithOriginIterable<T> on Iterable<WithOrigin<T>> {
  /// Map preserving origin through the chain.
  Iterable<WithOrigin<U>> mapOrigin<U>(U Function(Uri, T) f) =>
      map((e) => e.map(f));

  /// Filter with access to origin.
  Iterable<WithOrigin<T>> whereOrigin(bool Function(Uri, T) predicate) =>
      where((e) => predicate(e.origin, e.value));

  /// Flat map returning WithOrigin results.
  Iterable<WithOrigin<U>> expandOrigin<U>(
    Iterable<WithOrigin<U>> Function(Uri, T) f,
  ) => expand((e) => f(e.origin, e.value));

  /// Collect into list.
  List<WithOrigin<U>> buildOrigin<U>(U Function(Uri, T) f) =>
      map((e) => e.map(f)).toList();
}
