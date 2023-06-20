import 'package:manga_easy_crashlytics_service/manga_easy_crashlytics_service.dart';

void main(List<String> args) {
  final CrashlyticsService crashlyticsService = CrashlyticsGoogleService();
  try {
    throw Exception('Error qualquer');
  } catch (e, s) {
    if (e is Exception) {
      crashlyticsService.recordError(e: e, tag: 'Exemple', stack: s);
    }
  }
}
