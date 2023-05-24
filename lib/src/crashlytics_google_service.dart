import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_crashlytics_service/src/crashlytics_service.dart';

class CrashlyticsGoogleService implements CrashlyticsService {
  @override
  void initialize({String? userID}) {
    if (userID != null) {
      FirebaseCrashlytics.instance.setUserIdentifier(userID);
    }
  }

  @override
  void recordError({
    required Exception e,
    StackTrace? stack,
    required String tag,
  }) {
    try {
      FirebaseCrashlytics.instance.recordFlutterError(
        FlutterErrorDetails(
          exception: e,
          stack: stack,
          library: tag,
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  void recordLog(
    String message,
  ) {
    try {
      FirebaseCrashlytics.instance.log(message);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
