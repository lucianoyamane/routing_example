import 'package:flutter/cupertino.dart';
import 'package:routing_example/src/fade_transition_page.dart';
import 'package:routing_example/src/screens/home.dart';

class ExampleNavigator extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const ExampleNavigator({
    required this.navigatorKey,
    Key? key,
  }) : super(key: key);

  @override
  State createState() => _ExampleNavigatorState();
}

class _ExampleNavigatorState extends State<ExampleNavigator> {


  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      onPopPage: (route, dynamic result) {
        return route.didPop(result);
      },
      pages: const [
        FadeTransitionPage<void>(
            key: ValueKey('Home'),
            child: HomeScreen()
        )
      ]
    );
  }
}