# Clima App

Aplicativo de previsão do tempo desenvolvido em flutter como projeto de estudo.

O objetivo é criar uma interface de clima simples, organizada e responsiva, apresentando informações como temperatura atual,
sensação térmica, umidade, vento, possibilidade de chuva e previsão para os próximos dias.

## Sobre O Projeto

O aplicativo apresenta:

- Localização atual exibida no cabeçalho;
- Temperatura atual;
- Condição do tempo;
- Sensação termica;
- Umidade;
- Velocidade do vento;
- Possibilidade de chuva;
- Previsão para os próximos dias;
- ícones diferentes para cada condição clímatica;
- Interfaces adaptada para o formato de tela de celular.

## Tecnologias utilizadas

- Flutter;
- Dart;
- Material Design;

## Dependências e packages

O projeto utiliza principalmente os recursos nativos do Flutter.

### Dependências Principais

- `flutter/material.dart` - utilizando para construção da interface e componentes visuais.
- `flutter_test` - utilizado para testes do aplicativo.

Não foram utilizadas APIs externas ou packages adicionais para obter dados meteorológicos.

## Estrutura do projeto

O projeto foi organizado separando responsabilidades entre telas, widgets e modelos.

lib/
├── main.dart
├── models/
│ └── weather.dart
├── screens/
│ └── home_screens.dart
├── theme/
│ └── app_theme.dart
└── widgets/
├── weather_header.dart
├── current_weather.dart
├── weather_metric.dart
└── forecast_card.dart
