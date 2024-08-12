import 'package:dars96_gorouter/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProfileSettings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/news1', arguments: {
                //   "page": "10",
                // });
                context.goNamed(AppRoutes.news1, queryParameters: {
                  "city": "Tashkent",
                });
              },
              child: const Text("News1"),
            ),
          ],
        ),
      ),
    );
  }
}
