import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/menu/provider/provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavBarProvider = Provider.of<BottomNavBarProvider>(context);

    return CurvedNavigationBar(
      index: bottomNavBarProvider.currentIndex,
      backgroundColor: Colors.blue,
      color: Colors.white,
      buttonBackgroundColor: Colors.blue,
      height: 50,
      animationDuration: const Duration(milliseconds: 400),
      items: <Widget>[
        Icon(Icons.home, size: 30),
        Icon(Icons.shopping_cart, size: 30),
        Icon(Icons.person, size: 30),
      ],
      onTap: (index) {
        bottomNavBarProvider.updateCurrentIndex(index);
      },
    );
  }
}
    
//     BottomNavigationBar(
//       currentIndex: bottomNavBarProvider.currentIndex,
//       onTap: (index) {
//         bottomNavBarProvider.updateCurrentIndex(index);
//       },
//       items: <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.shopping_cart),
//           label: 'Cart',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.category),
//           label: 'Category',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label: 'Profile',
//         ),
//       ],
//     );
//   }
// }