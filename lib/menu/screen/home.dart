import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/menu/screen/details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsProductPage(),
              ),
            );
          },
          child: Text('Go to Details Product'),
        ),
      ),
      
    );
  }
}