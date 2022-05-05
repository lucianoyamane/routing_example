import 'package:flutter/material.dart';
import 'package:routing_example/src/route_generator.dart';

class ExampleApp extends StatefulWidget {

  const ExampleApp({Key? key}) : super(key: key);

  @override
  State createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }

}