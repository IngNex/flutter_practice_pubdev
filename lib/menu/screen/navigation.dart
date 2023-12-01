import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/menu/common/widgets/customnavigator.dart';
import 'package:flutter_practice_navigationbar/menu/provider/provider.dart';
import 'package:flutter_practice_navigationbar/menu/screen/home.dart';
import 'package:flutter_practice_navigationbar/menu/screen/product.dart';
import 'package:flutter_practice_navigationbar/menu/screen/profile.dart';
import 'package:provider/provider.dart';

class BottomNavigationManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottomNavBarProvider = Provider.of<BottomNavBarProvider>(context);

    // Lista de páginas disponibles
    final List<Widget> pages = [
      HomePage(),
      ProductPage(),
      ProfilePage(),
    ];

    return Scaffold(
      body: pages[bottomNavBarProvider.currentIndex], // Muestra la página actual según el índice seleccionado
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}