import 'package:flutter/services.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:versa360_webview/src/splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const Versa360App());
}

class Versa360App extends StatelessWidget {
  const Versa360App({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadcnApp(home: SplashPage());
  }
}
