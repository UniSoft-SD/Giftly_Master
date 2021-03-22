class GiftlyException implements Exception {
  final String _message;
  GiftlyException(this._message);
  @override
  String toString() => _message ?? "Something went wrong";
}
