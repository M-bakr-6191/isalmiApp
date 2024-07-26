import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/tabs/quran/sora_details_scree.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        SoraDetailsScreen.routeName: (context) => SoraDetailsScreen()
      },
      initialRoute: HomeScreen.routename,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
