import 'package:flutter/material.dart';

import '../widgets/weather_header.dart';
import '../widgets/current_weather.dart';
import '../widgets/weather_metric.dart';
import '../widgets/forecast_card.dart';
import '../models/weather.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Weather> previsoes = [
    Weather(
      dia: "Segunda-feira",
      temperatura: 37.5,
      condicao: "Ensolarado",
      icone: Icons.wb_sunny,
      corIcone: Colors.orange,
    ),
    Weather(
      dia: "Terça-feira",
      temperatura: 32.2,
      condicao: "Ensolarado",
      icone: Icons.wb_sunny,
      corIcone: Colors.orange,
    ),
    Weather(
      dia: "Quarta-feira",
      temperatura: 28.6,
      condicao: "Nublado",
      icone: Icons.cloud,
      corIcone: Colors.grey,
    ),
  ];

  final Weather hoje = Weather(
    dia: "Hoje",
    temperatura: 34.8,
    condicao: "Ensolarado",
    icone: Icons.wb_sunny,
    corIcone: Colors.orange,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF3B82F6), Color(0xFF1E40AF)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Cabeçalho
                  WeatherHeader(
                    titulo: "Previsão Do Tempo",
                    cidade: "Cuiabá, MT",
                    hoje: "Hoje",
                  ),

                  const SizedBox(height: 25),

                  // Clima atual
                  CurrentWeather(
                    temperatura: hoje.temperatura,
                    condicao: hoje.condicao,
                    sensacaoTermica: 36.0,
                  ),

                  const SizedBox(height: 25),

                  // Métricas
                  Row(
                    children: [
                      Expanded(
                        child: WeatherMetric(titulo: "Umidade", valor: "78%"),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: WeatherMetric(titulo: "Vento", valor: "9 km/h"),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: WeatherMetric(titulo: "Chuva", valor: "35%"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // Título da previsão
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Próximos dias",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Previsão dos próximos dias
                  Row(
                    children: [
                      ...previsoes.map(
                        (previsao) => Expanded(
                          child: ForecastCard(
                            dia: previsao.dia,
                            temperatura: previsao.temperatura,
                            icone: previsao.icone,
                            condicao: previsao.condicao,
                            corIcone: previsao.corIcone,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
