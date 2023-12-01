import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/menu/main_menu.dart';
import 'package:flutter_practice_navigationbar/provider_firebase_storage/main_fb_storage.dart';

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
          ],
        ),
      ),
    );
  }
}
