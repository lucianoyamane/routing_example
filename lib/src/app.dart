import 'package:flutter/material.dart';
import 'package:routing_example/routing/delegate.dart';
import 'package:routing_example/routing/parser.dart';
import 'package:routing_example/routing/route_state.dart';
import 'package:routing_example/src/navigator.dart';

class ExampleApp extends StatefulWidget {

  const ExampleApp({Key? key}) : super(key: key);

  @override
  State createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {

  final _navigatorKey = GlobalKey<NavigatorState>();
  late final RouteState _routeState;
  late final TemplateRouteParser _routeParser;
  late final SimpleRouterDelegate _routerDelegate;

  @override
  void initState() {
    super.initState();
    _routeParser = TemplateRouteParser(
        allowedPaths: [
          '/home',
          '/simplepage',
          '/parampage/:paramExample'
        ],
      initialRoute: '/home'
    );

    _routeState = RouteState(_routeParser);

    _routerDelegate = SimpleRouterDelegate(
      routeState: _routeState,
      navigatorKey: _navigatorKey,
      builder: (context) => ExampleNavigator(navigatorKey: _navigatorKey),
    );


  }

  @override
  Widget build(BuildContext context) {
    return RouteStateScope(
        notifier: _routeState,
        child: MaterialApp.router(
            routeInformationParser: _routeParser,
            routerDelegate: _routerDelegate
          )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _routerDelegate.dispose();
    _routeState.dispose();
  }
}