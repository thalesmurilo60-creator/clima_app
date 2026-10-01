import 'package:flutter/material.dart';

class CurrentWeather extends StatelessWidget {
  final double temperatura;
  final String condicao;
  final double sensacaoTermica;

  const CurrentWeather({
    super.key,
    required this.temperatura,
    required this.condicao,
    required this.sensacaoTermica,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.wb_sunny, size: 80, color: Colors.orangeAccent),

        const SizedBox(height: 10),

        Text(
          "${temperatura.toStringAsFixed(1)}°C",
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          condicao,
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),

        const SizedBox(height: 5),

        Text(
          "Sensação térmica: ${sensacaoTermica.toStringAsFixed(1)}°C",
          style: const TextStyle(fontSize: 16, color: Colors.white70),
        ),
      ],
    );
  }
}
