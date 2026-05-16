abstract interface class Repository<T> {
  Future<T?> fetch(String identifier);
}
