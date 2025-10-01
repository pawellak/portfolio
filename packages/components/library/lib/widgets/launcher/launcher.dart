import 'package:components_core/components_pub_dev_export.dart' show launchUrl;

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

  /// Call [phoneNumber] in the default phone.
  Future<void> call(String phoneNumber) async {
    try {
      final uri = Uri.parse('tel:$phoneNumber');
      await _tryToLaunchUrl(uri);
    } catch (e) {
      //no-op
    }
  }

  /// Call [mail] in the default phone.
  Future<void> mailTo(String mail) async {
    try {
      final uri = Uri.parse('mailto:$mail');
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
