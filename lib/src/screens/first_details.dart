import 'package:flutter/material.dart';

class FirstDetails extends StatelessWidget {
  const FirstDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: <Widget>[
          const Center(
            child: Text("First Details"),
          ),
          TextButton(
              onPressed: () {
              },
              child: const Text("NAVIGATE")),
        ],
      ),
    );
  }
}