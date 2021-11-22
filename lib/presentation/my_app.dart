import 'package:flutter/material.dart';
import 'package:thestories/presentation/routes/app_router.dart';

import 'theme/theme_barrier.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = RouteGenerator();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ligthTheme(),
      initialRoute: '/',
      onGenerateRoute: _appRouter.generateRoute,
    );
  }
}
