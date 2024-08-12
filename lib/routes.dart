import 'package:dars96_gorouter/screens/home.dart';
import 'package:dars96_gorouter/screens/news.dart';
import 'package:dars96_gorouter/screens/news1.dart';
import 'package:dars96_gorouter/screens/news2.dart';
import 'package:dars96_gorouter/screens/news3.dart';
import 'package:dars96_gorouter/screens/notifications_settings.dart';
import 'package:dars96_gorouter/screens/profile_settings.dart';
import 'package:dars96_gorouter/screens/settings.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String home = "/home";
  static const String news = "news";
  static const String news1 = "news1";
  static const String news2 = "news2";
  static const String news3 = "news3";
  static const String settings = "settings";
  static const String profileSettings = "profileSettings";
  static const String notificationsSettings = "notificationsSettings";

  static final config = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        name: home,
        builder: (context, state) => const Home(),
        routes: [
          GoRoute(
              path: news,
              name: news,
              builder: (context, state) => const News(),
              routes: [
                GoRoute(
                  path: news1,
                  name: news1,
                  builder: (context, state) => const News1(),
                ),
                GoRoute(
                  path: news2,
                  name: news2,
                  builder: (context, state) => const News2(),
                ),
                GoRoute(
                  path: news3,
                  name: news3,
                  builder: (context, state) => const News3(),
                ),
              ]),
          GoRoute(
            path: settings,
            name: settings,
            builder: (context, state) => const Settings(),
            routes: [
              GoRoute(
                path: profileSettings,
                name: profileSettings,
                builder: (context, state) => const ProfileSettings(),
              ),
              GoRoute(
                path: notificationsSettings,
                name: notificationsSettings,
                builder: (context, state) => const NotificationsSettings(),
              ),
              GoRoute(
                path: news1,
                name: "settingsNews",
                builder: (context, state) => const News1(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
