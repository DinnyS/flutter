import 'package:flutter/material.dart';
import 'package:flutter_widget_compose/getIt/get_it.dart';
import 'package:flutter_widget_compose/router/go_router.dart';


void main() {
  registerServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

