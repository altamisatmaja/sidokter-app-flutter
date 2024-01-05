import 'package:flutter/material.dart';
import 'package:sidokter_app/main_layout.dart';
import 'package:sidokter_app/screens/auth_page.dart';
import 'package:sidokter_app/utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // define themedata
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Sidokter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // pre define input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.outlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed
        ),
        // useMaterial3: true,
      ),
      initialRoute: '/',
      // intial routes: auth page
      routes: {
        '/':(context) => const AuthPage(),

        // route after login
        'main': (context) =>  const MainLayout(),
      },
    );
  }
}
