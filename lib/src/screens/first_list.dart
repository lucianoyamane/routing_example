import 'package:flutter/material.dart';

class FirstListScreen extends StatelessWidget {
  const FirstListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First list')),
      body: ListView(
        children: [
            ListTile(
              title: const Text("Alpha"),
              subtitle: const Text("alpha"),
              onTap: () => {},
            ),
            ListTile(
              title: const Text("Beta"),
              subtitle: const Text("beta"),
              onTap: () => {},
            ),
            ListTile(
              title: const Text("Gamma"),
              subtitle: const Text("gamma"),
              onTap: () => {},
            )
        ],
      ),
    );
  }
}