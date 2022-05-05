import 'package:flutter/material.dart';

class SecondDetails extends StatelessWidget {

  final String data;

  const SecondDetails({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Second details')),
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