import 'package:dars96_gorouter/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    print("NEWS");
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
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
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/news2');
                context.goNamed(AppRoutes.news2);
              },
              child: const Text("News2"),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/news3');
                context.goNamed(AppRoutes.news3);
              },
              child: const Text("News3"),
            ),
          ],
        ),
      ),
    );
  }
}
