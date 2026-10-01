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
    ),
    Weather(
      dia: "Terça-feira",
      temperatura: 32.2,
      condicao: "Ensolarado",
      icone: Icons.wb_sunny,
    ),
    Weather(
      dia: "Quarta-feira",
      temperatura: 28.6,
      condicao: "Nublado",
      icone: Icons.cloud,
    ),
  ];

  final Weather hoje = Weather(
    dia: "Hoje",
    temperatura: 34.8,
    condicao: "Ensolarado",
    icone: Icons.wb_sunny,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meu Aplicativo")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              WeatherHeader(
                titulo: "Previsão Do Tempo",
                cidade: "Cuiabá, Mato Grosso",
                hoje: "Hoje",
              ),

              SizedBox(height: 20),

              CurrentWeather(
                temperatura: hoje.temperatura,
                condicao: "Ensolarado",
              ),

              SizedBox(height: 20),

              WeatherMetric(titulo: "Umidade", valor: "78%"),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text("Previsão dos Próximos Dias"),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        ...previsoes.map(
                          (previsao) => Expanded(
                            child: ForecastCard(
                              dia: previsao.dia,
                              temperatura: previsao.temperatura,
                              icone: previsao.icone,
                              condicao: previsao.condicao,
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
    );
  }
}
