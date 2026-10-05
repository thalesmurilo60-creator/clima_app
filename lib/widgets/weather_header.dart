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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Lado esquerdo
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                  size: 18,
                ),

                const SizedBox(width: 5),

                Text(
                  cidade,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
