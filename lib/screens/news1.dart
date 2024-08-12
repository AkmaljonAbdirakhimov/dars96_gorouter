import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class News1 extends StatelessWidget {
  const News1({super.key});

  @override
  Widget build(BuildContext context) {
    // final arguments = ModalRoute.of(context)?.settings.arguments;

    // print(arguments);

    // final query = GoRouterState.of(context).uri.query;
    // print(query);

    print("https://behruz.uz${GoRouterState.of(context).uri}");

    return Scaffold(
      appBar: AppBar(
        title: const Text("News1"),
      ),
      body: const Center(
        child: Text('News1'),
      ),
    );
  }
}
