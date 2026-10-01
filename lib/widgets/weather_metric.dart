import 'package:flutter/material.dart';

class WeatherMetric extends StatelessWidget
{
  final String titulo;
  final String valor;

  const WeatherMetric({
  super.key,
  required this.titulo,
  required this.valor,
  });

  @override
  Widget build(BuildContext context)
  {
   return Column(
    children: [
       Text(titulo),
       Text(valor),
    ],
   );

  }

}