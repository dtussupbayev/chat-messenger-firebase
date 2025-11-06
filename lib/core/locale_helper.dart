import 'package:realtime_chat_app/l10n/app_localizations.dart';
import 'package:realtime_chat_app/core/navigation.dart';

/// Helper to access current localized strings from places where BuildContext is not available
class LocaleStrings {
  static AppLocalizations get current {
    final ctx = navigatorKey.currentContext;
    assert(
      ctx != null,
      'No navigator context available. Ensure navigatorKey is set on MaterialApp.',
    );
    return AppLocalizations.of(ctx!);
  }
}
