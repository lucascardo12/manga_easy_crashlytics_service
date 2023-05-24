interface class CrashlyticsService {
  void recordError({
    required Exception e,
    StackTrace? stack,
    required String tag,
  }) {
    throw UnimplementedError();
  }

  void recordLog(
    String message,
  ) {
    throw UnimplementedError();
  }

  void initialize() {
    throw UnimplementedError();
  }
}
