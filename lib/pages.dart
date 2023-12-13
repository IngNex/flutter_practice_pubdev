import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/menu/main_menu.dart';
import 'package:flutter_practice_navigationbar/provider_firebase_storage/main_fb_storage.dart';
import 'package:flutter_practice_navigationbar/switch_personal.dart/page.dart';
import 'package:flutter_practice_navigationbar/switch_personal.dart/switch.dart';
import 'package:flutter_practice_navigationbar/theme_color/main_theme_color.dart';

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MainMenu(),
                  ),
                );
              },
              child: const Text('Menu'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MainFbStorage(),
                  ),
                );
              },
              child: const Text('MainFbStorage'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  MainThemeColor(),
                  ),
                );
              },
              child: const Text('ThemeColor'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  SwitchPage(),
                  ),
                );
              },
              child: const Text('Switch'),
            ),
          ],
        ),
      ),
    );
  }
}
