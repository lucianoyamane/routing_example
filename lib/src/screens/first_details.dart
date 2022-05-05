import 'package:flutter/material.dart';

class FirstDetails extends StatelessWidget {

  final String data;

  const FirstDetails({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First details')),
      body: SizedBox(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(data),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("RETURN LIST")),
          ],
        ),
      )
    );


  }
}