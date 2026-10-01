import 'package:flutter/material.dart';

class ForecastCard extends StatelessWidget {
  final String dia;
  final double temperatura;
  final String condicao;
  final IconData icone;

  const ForecastCard({
    super.key,
    required this.dia,
    required this.temperatura,
    required this.icone,
    required this.condicao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 98, 157, 250),
        ),
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Text(dia, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Icon(icone, size: 40),
            SizedBox(height: 10),
            Text(
              "$temperatura°C",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(condicao, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
