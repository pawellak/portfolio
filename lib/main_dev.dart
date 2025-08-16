import 'package:components_library/components_library_export.dart' show Environment;
import 'package:pawellak_portfolio/initialize_app.dart';
import 'package:pawellak_portfolio/run_portfolio_app.dart';

Future<void> main() async {
  await initializeApp(Environment.dev);
  runPortfolioApp();
}
