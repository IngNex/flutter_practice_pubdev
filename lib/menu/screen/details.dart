import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/menu/common/widgets/customnavigator.dart';
import 'package:flutter_practice_navigationbar/menu/provider/provider.dart';
import 'package:provider/provider.dart';

class DetailsProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavBarProvider>(
      create: (_) => BottomNavBarProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Details Product Page'),
        ),
        body: Center(
          child: Text('Details of Product'),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}