import 'package:flutter/material.dart';

class WeatherHeader extends StatelessWidget {
  final String titulo;
  final String cidade;
  final String hoje;

  const WeatherHeader({
    super.key,
    required this.titulo,
    required this.cidade,
    required this.hoje,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titulo,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ), // fecha TextStyle
        ), // fecha Text

        Text(
          cidade,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ), // fecha TextStyle
        ),
        Text(
          hoje,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ), // fecha Text
      ],
    );
  }
}
