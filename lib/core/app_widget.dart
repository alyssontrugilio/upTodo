import 'package:flutter/material.dart';

import 'app_route.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'UpTodo',
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xff8875FF),
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color(0xff8875FF),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff8875FF),
        colorScheme: const ColorScheme.dark().copyWith(
          primary: const Color(0xff8875FF),
        ),
      ),
      themeMode: ThemeMode.dark,
      routerConfig: AppRoute.goRouter,
    );
  }
}
