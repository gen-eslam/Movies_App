import 'package:flutter/material.dart';
import 'package:movieapp/core/services/services_locator.dart';
import 'package:movieapp/core/utils/app_string.dart';
import 'package:movieapp/movies/presentation/screens/movies_screen.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
      home:const MoviesScreen(),
    );
  }
}
