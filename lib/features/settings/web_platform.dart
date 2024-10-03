import 'package:universal_html/html.dart' as html;

String? getWebLocale() {
  return html.window.navigator.language;
}
