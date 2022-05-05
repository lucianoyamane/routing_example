import 'package:flutter/material.dart';

class SecondListScreen extends StatelessWidget {
  const SecondListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second list')),
      body: ListView(
        children: [
          ListTile(
            title: const Text("One"),
            subtitle: const Text("one"),
            onTap: () => {
              Navigator.of(context).pushNamed(
                '/seconddetail',
                arguments: 'One',
              )
            },
          ),
          ListTile(
            title: const Text("Two"),
            subtitle: const Text("two"),
            onTap: () => {
              Navigator.of(context).pushNamed(
                '/seconddetail',
                arguments: 'Two',
              )
            },
          ),
          ListTile(
            title: const Text("Three"),
            subtitle: const Text("three"),
            onTap: () => {
              Navigator.of(context).pushNamed(
                '/seconddetail',
                arguments: 'Three',
              )
            },
          )
        ],
      ),
    );
  }
}