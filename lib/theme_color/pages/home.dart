import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/theme_color/provider.dart/theme_color_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Provider Example',
      theme: Provider.of<ThemeNotifier>(context).currentTheme,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Provider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                themeNotifier.toggleTheme();
              },
              child: Text('Cambiar Tema'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showColorPickerDialog(context, themeNotifier);
              },
              child: Text('Cambiar Color Primario'),
            ),
          ],
        ),
      ),
    );
  }

  void _showColorPickerDialog(BuildContext context, ThemeNotifier themeNotifier) {
    Color selectedColor = themeNotifier.currentTheme.primaryColor;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Seleccionar Color Primario'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: selectedColor,
              onColorChanged: (color) {
                selectedColor = color;
              },
              showLabel: true,
              pickerAreaHeightPercent: 0.8,
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                themeNotifier.updatePrimaryColor(selectedColor);
                Navigator.of(context).pop();
              },
              child: Text('Guardar'),
            ),
          ],
        );
      },
    );
  }
}