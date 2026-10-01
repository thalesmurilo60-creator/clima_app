import 'package:flutter/material.dart';

class CurrentWeather extends StatelessWidget {
  final double temperatura;
  final String condicao;

  const CurrentWeather({
    super.key,
    required this.temperatura,
    required this.condicao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Icon(Icons.wb_sunny, size: 80),

            SizedBox(height: 10),

            Text(
              "$temperatura°C",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Text(condicao, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
