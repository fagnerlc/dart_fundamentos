import 'dart:math';

void main(List<String> args) {
  print(periodicidade(dataEvento: DateTime.now(), ciclos: 7, periodicidade: 30));
  print(calculaIdade(DateTime(1987, 01, 15)));
  print(calculaIdade(DateTime(2021, 12, 01)));
  print(calculaVolumeCilindrico(diametro: 5, altura: 10));
  print(calculaVolumeCubico(altura: 10, largura: 7, comprimento: 7));
  print(calculaDiametroPorCircunferencia(circunferencia: 10));
  print(calculaAumentoPercentual(valorInicial: 450, valorFinal: 400));
}

List<DateTime> periodicidade({
  required DateTime dataEvento,
  required int ciclos,
  required int periodicidade,
}) {
  List<DateTime> listaDatas = [];
  DateTime dataRetornada;
  DateTime dataCalc = dataEvento;
  for (var i = 0; i < ciclos; i++) {
    dataRetornada = dataCalc.add(Duration(days: periodicidade));
    listaDatas.add(dataRetornada);
    dataCalc = dataCalc.add(Duration(days: periodicidade));
  }
  return listaDatas;
}

calculaIdade(DateTime dataNascimento) {
  DateTime dataCorrente = DateTime.now();
  int idade = dataCorrente.year - dataNascimento.year;
  int mes1 = dataCorrente.month;
  int mes2 = dataNascimento.month;
  if (mes2 > mes1) {
    idade--;
  } else if (mes1 == mes2) {
    int day1 = dataCorrente.day;
    int day2 = dataNascimento.day;
    if (day2 > day1) {
      idade--;
    }
  }
  return idade;
}

double calculaVolumeCilindrico({
  required double diametro,
  required double altura,
}) {
  double raio = diametro / 2;
  return (raio * raio) * pi * altura; //ml
}

double calculaVolumeCubico({
  required double altura,
  required double largura,
  required double comprimento,
}) {
  return altura * largura * comprimento; //ml
}

double calculaDiametroPorCircunferencia({required double circunferencia}) {
  return circunferencia / pi;
}

double calculaAumentoPercentual({required double valorInicial, required double valorFinal}) {
  double aumento = valorFinal - valorInicial;
  return (aumento / valorInicial) * 100;
}
