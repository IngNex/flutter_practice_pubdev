import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/theme_color/pages/home.dart';
import 'package:flutter_practice_navigationbar/theme_color/provider.dart/theme_color_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(), // Color primario predeterminado
      child: MainThemeColor(),
    ),
  );
}

class MainThemeColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Provider',
      theme: Provider.of<ThemeNotifier>(context).currentTheme,
      home: HomeScreen(),
    );
  }
}
