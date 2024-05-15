import 'package:flutter/material.dart';
import 'package:tap2024/screens/home_screen.dart';
import 'package:tap2024/screens/intenciones.dart';
import 'package:tap2024/screens/login_screen_2.dart';
import 'package:tap2024/screens/movie_detail_screen.dart';
import 'package:tap2024/screens/popular_screen.dart';
import 'package:tap2024/screens/register_secreen.dart';
import 'package:tap2024/screens/splash_screen.dart';
import 'package:tap2024/settings/ThemeSettings.dart';
import 'package:tap2024/settings/value_listener.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ValueListener.isDark,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PopularScreen(),
          theme: value 
          ? ThemeSettings.darkTheme(context) 
          : ThemeSettings.lightTheme(context),
          routes:{
            "/home":(context) => const HomeScreen(),
            "/login2":(context) => const LoginScreen2(),
            "/intent":(context) => IntencionesScreen(),
            "/intent2":(context) => RegisterScreen(),
            "/detail": (context) =>MovieDetailScreen()
          }
        );
      }
    );
  }
}
















