import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/bottomnavigationbar.dart/pages/details.dart';
import 'package:flutter_practice_navigationbar/bottomnavigationbar.dart/pages/home.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        children: [
          Text('Profile'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text('Details Product'))
        ],
      ),
    ));
  }
}
