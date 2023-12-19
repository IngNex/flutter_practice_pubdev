import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(
        itemCount: 100, // Cantidad de elementos en el ListView
        itemBuilder: (context, index) {
          // El constructor itemBuilder se llama para cada elemento del ListView
          // index es el índice del elemento actual (0 a itemCount - 1)
          return ListTile(
            title: Text('Item ${index + 1}'), // Mostrar el número del elemento
        );}));
  }
}