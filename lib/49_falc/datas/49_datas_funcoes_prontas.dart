import 'dart:math';

void main(List<String> args) {
  print(periodicidade(dataEvento: DateTime.now(), ciclos: 7, periodicidade: 30));
  print(calculaIdade(DateTime(1987, 01, 15)));
  print(calculaIdade(DateTime(2021, 12, 01)));
  print(calculaVolumeCilindrico(diametro: 5, altura: 10));
  print(calculaVolumeCubico(altura: 10, largura: 7, comprimento: 7));
  print(calculaDiametroPorCircunferencia(circunferencia: 10));
  print(calculaAumentoPercentual(valorInicial: 5.3, valorFinal: 7.4));
  print(regraTres(num1: 10, num2: 18, num3: 15));
  print(regraTresComposta(num1: 5, num2: 4, num3: 15, num4: 2, num5: 3));
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

double regraTres({
  required double num1,
  required double num2,
  required double num3,
}) {
  return (num2 * num3) / num1;
}

double regraTresComposta({
  required double num1,
  required double num2,
  required double num3,
  required double num4,
  required double num5,
}) {
  return (num4 * num5) * num3 / (num1 * num2);
}
