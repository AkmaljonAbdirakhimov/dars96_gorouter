import 'package:dars96_gorouter/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    print("HOME");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/news');
                context.goNamed(AppRoutes.news);
              },
              child: const Text("Yangiliklar"),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (ctx) => const Settings(),
                //   ),
                // );
                context.goNamed(AppRoutes.settings);
              },
              child: const Text("Sozlamalar"),
            ),
          ],
        ),
      ),
    );
  }
}
