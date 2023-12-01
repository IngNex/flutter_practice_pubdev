import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/menu/provider/provider.dart';
import 'package:flutter_practice_navigationbar/menu/screen/navigation.dart';
import 'package:provider/provider.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomNavBarProvider(),
      child: MaterialApp(
        title: 'BottomNavigationBar with Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomNavigationManager(),
      ),
    );
  }
}