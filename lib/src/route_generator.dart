import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routing_example/src/screens/error.dart';
import 'package:routing_example/src/screens/first_details.dart';
import 'package:routing_example/src/screens/first_list.dart';
import 'package:routing_example/src/screens/home.dart';
import 'package:routing_example/src/screens/second_details.dart';
import 'package:routing_example/src/screens/second_list.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/firstlist':
        return MaterialPageRoute(
          builder: (_) => const FirstListScreen(),
        );
      case '/firstdetail':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => FirstDetails(data: args));
        }
        return MaterialPageRoute(
          builder: (_) => const ErrorPage(),
        );
      case '/secondlist':
        return MaterialPageRoute(
          builder: (_) => const SecondListScreen(),
        );
      case '/seconddetail':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondDetails(data: args));
        }
        return MaterialPageRoute(
          builder: (_) => const ErrorPage(),
        );

      default:
      // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
          builder: (_) => const ErrorPage(),
        );
    }
  }
}