import 'package:flutter/material.dart';
import 'package:afyaexpress/themeprovider/theme.dart';
import 'package:afyaexpress/screens/login.dart';
import 'package:afyaexpress/screens/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'AfyaExpress',
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // The app's initial route is index.dart
        '/': (context) => IndexPage(),
        'main': (context) => LoginScreen(),
      },
    );
  }
}
