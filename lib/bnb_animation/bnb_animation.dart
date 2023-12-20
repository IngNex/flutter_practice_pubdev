import 'package:flutter/material.dart';

class BNBmain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyBottomNavigationBar();
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> with TickerProviderStateMixin {
  int _currentIndex = 0;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
      _controller.reset();
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Personalizado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeTransition(
              opacity: _animation,
              child: Icon(
                _getSelectedIcon(_currentIndex),
                size: 100.0,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20.0),
            FadeTransition(
              opacity: _animation,
              child: Text(
                _getSelectedLabel(_currentIndex),
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _currentIndex == 1 ? Colors.blue : Colors.red ),
            label: 'Inicio',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: _currentIndex == 1 ? Colors.blue : Colors.red),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: _currentIndex == 1 ? Colors.blue : Colors.red),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: _currentIndex == 1 ? Colors.blue : Colors.red),
            label: 'Configuración',
          ),
        ],
      ),
    );
  }

  IconData _getSelectedIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.explore;
      case 2:
        return Icons.person;
      case 3:
        return Icons.settings;
      default:
        return Icons.home;
    }
  }

  String _getSelectedLabel(int index) {
    switch (index) {
      case 0:
        return 'Inicio';
      case 1:
        return 'Explorar';
      case 2:
        return 'Perfil';
      case 3:
        return 'Configuración';
      default:
        return 'Inicio';
    }
  }
}