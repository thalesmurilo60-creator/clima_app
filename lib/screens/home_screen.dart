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
      corIcone: Colors.orangeAccent,
    ),
    Weather(
      dia: "Terça-feira",
      temperatura: 32.2,
      condicao: "Ensolarado",
      icone: Icons.wb_sunny,
      corIcone: Colors.orangeAccent,
    ),
    Weather(
      dia: "Quarta-feira",
      temperatura: 28.6,
      condicao: "Nublado",
      icone: Icons.cloud,
      corIcone: Colors.white38,
    ),
  ];

  final Weather hoje = Weather(
    dia: "Hoje",
    temperatura: 34.8,
    condicao: "Ensolarado",
    icone: Icons.wb_sunny,
    corIcone: Colors.orangeAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App De Previsões Climaticas")),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF3B82F6), Color(0xFF1E40AF)],
          ),
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),

            child: Column(
              children: [
                WeatherHeader(
                  titulo: "Previsão Do Tempo",
                  cidade: "Cuiabá, Mato Grosso",
                  hoje: "Hoje",
                ),

                const SizedBox(height: 20),

                CurrentWeather(
                  temperatura: hoje.temperatura,
                  condicao: hoje.condicao,
                  sensacaoTermica: 36,
                ),

                const SizedBox(height: 20),

                // MÉTRICAS
                Row(
                  children: [
                    Expanded(
                      child: WeatherMetric(titulo: "Umidade", valor: "78%"),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: WeatherMetric(titulo: "Vento", valor: "9 km/h"),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: WeatherMetric(titulo: "Chuva", valor: "35%"),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // PREVISÃO DOS PRÓXIMOS DIAS
                Padding(
                  padding: const EdgeInsets.all(12),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      const Text(
                        "Previsão dos Próximos Dias",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 20),

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
