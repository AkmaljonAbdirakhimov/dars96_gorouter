import 'package:dars96_gorouter/routes.dart';
import 'package:dars96_gorouter/screens/home.dart';
import 'package:dars96_gorouter/screens/news.dart';
import 'package:dars96_gorouter/screens/news1.dart';
import 'package:dars96_gorouter/screens/news2.dart';
import 'package:dars96_gorouter/screens/news3.dart';
import 'package:dars96_gorouter/screens/notifications_settings.dart';
import 'package:dars96_gorouter/screens/profile_settings.dart';
import 'package:dars96_gorouter/screens/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.config,
    );
  }
}

// http://flutterwithakmaljon.uz/home/news/news1