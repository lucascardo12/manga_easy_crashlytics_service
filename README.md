
## Features

TODO: Essa lib server para coletar os erros do app em produção

## Getting started
  Adicione o package como depenencia no pubspec
  manga_easy_crashlytics_service:
     git: 
      url: https://github.com/manga-easy/manga_easy_crashlytics_service.git
      ref: 1.0.0
## Usage

```dart
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

```
