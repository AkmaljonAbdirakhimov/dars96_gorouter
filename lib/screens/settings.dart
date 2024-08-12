import 'package:dars96_gorouter/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SETTINGS"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/profile-settings');
                context.goNamed(AppRoutes.profileSettings);
              },
              child: const Text("ProfileSettings"),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/notifications-settings');
                context.goNamed(AppRoutes.notificationsSettings);
              },
              child: const Text("NotificationsSettings"),
            ),
          ],
        ),
      ),
    );
  }
}
