import 'package:url_launcher/url_launcher.dart';

/// A class for launching URL and making phone calls.
mixin class Launcher {
  const Launcher();

  /// Launches [url] in the default browser.
  Future<void> launchLink(String url) async {
    try {
      final uri = Uri.parse(url);
      await _tryToLaunchUrl(uri);
    } catch (e) {
      //no-op
    }
  }

  ///Passes [uri] to the underlying platform for handling.
  Future<void> _tryToLaunchUrl(Uri uri) async {
    if (await launchUrl(uri)) {
      return;
    } else {
      //no-op
    }
  }
}
