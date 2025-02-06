import 'package:flutter/material.dart';
import 'package:zzzbookly/core/utils/app_router.dart';
import 'package:zzzbookly/core/utils/theme.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
    );
  }
}
