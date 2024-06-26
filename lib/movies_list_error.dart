class MoviesListError {
  final String statusMassage;
  final int? statusCode;
  final bool isSuccess;

  MoviesListError(this.statusMassage, this.statusCode, this.isSuccess);

  static MoviesListError formJson(Map map) {
    return MoviesListError(
      map["status_message"],
      map["status_code"],
      map["success"] ?? false,
    );
  }

  @override
  String toString() =>
      'MoviesListError(statusMassage: $statusMassage, statusCode: $statusCode, isSuccess: $isSuccess)';
}
