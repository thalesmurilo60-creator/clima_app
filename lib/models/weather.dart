import 'package:flutter/material.dart';

class Weather {
  final String dia;
  final double temperatura;
  final String condicao;
  final IconData icone;

  Weather({
    required this.dia,
    required this.temperatura,
    required this.condicao,
    required this.icone,
  });
}
