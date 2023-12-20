import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/bottomnavigationbar.dart/pages/home.dart';
import 'package:flutter_practice_navigationbar/bottomnavigationbar.dart/pages/product.dart';
import 'package:flutter_practice_navigationbar/bottomnavigationbar.dart/pages/profile.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dot Navigation Bar Example'),
//       ),
//       extendBody: true,
//       body: _buildScreens()[_currentIndex],
//       bottomNavigationBar: Stack(
//         children: [

//           DotNavigationBar(
//             currentIndex: _currentIndex,
//             onTap: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             items: [
//               DotNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 selectedColor: Colors.blue,
//               ),
//               DotNavigationBarItem(
//                 icon: Icon(Icons.dashboard),
//                 selectedColor: Colors.green,
//               ),
//               DotNavigationBarItem(
//                 icon: Icon(Icons.notifications),
//                 selectedColor: Colors.orange,
//               ),
//             ],
//           ),
//           Positioned(left: 0,right: 0, top: 10,child: CircleAvatar(radius: 10,)),
//         ],
//       ),
//     );
//   }

//   List<Widget> _buildScreens() {
//     return [
//       Home(),
//       Container(color: Colors.green, child: Center(child: Text('Dashboard Screen'))),
//       Container(color: Colors.orange, child: Center(child: Text('Notifications Screen'))),
//     ];
//   }
// }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar with ListView Example'),
      ),
      extendBody: true,
      body: _buildListView(
          _selectedIndex), // Muestra el ListView según el índice seleccionado
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.blue, // Color del ítem seleccionado
        buttonBackgroundColor: Colors.blue, // Color del botón central
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.explore, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Actualiza el índice seleccionado
          });
        },
      ),
    );
  }

  Widget _buildListView(int index) {
    return ListView.builder(
      itemCount: 100, // Cantidad de elementos en el ListView
      itemBuilder: (context, idx) {
        // El constructor itemBuilder se llama para cada elemento del ListView
        // idx es el índice del elemento actual (0 a itemCount - 1)
        return ListTile(
          title: Text(
              'Item ${idx + 1} on page ${index + 1}'), // Mostrar el número del elemento y la página actual
        );
      },
    );
  }
}
