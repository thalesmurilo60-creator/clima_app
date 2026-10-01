import 'package:flutter/material.dart';

class ForecastCard extends StatelessWidget {
  final String dia;
  final double temperatura;
  final String condicao;
  final IconData icone;
  final Color corIcone;

  const ForecastCard({
    super.key,
    required this.dia,
    required this.temperatura,
    required this.condicao,
    required this.icone,
    required this.corIcone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white.withValues(alpha: 0.25)),
      ),
      child: Column(
        children: [
          Text(
            dia,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Icon(icone, color: corIcone, size: 40),

          const SizedBox(height: 8),

          Text(
            "${temperatura.toStringAsFixed(1)}°C",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            condicao,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
