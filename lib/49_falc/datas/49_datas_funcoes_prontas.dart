import 'dart:math';

void main(List<String> args) {
  print('periodicidade: ${periodicidade(dataEvento: DateTime.now(), ciclos: 7, periodicidade: 30)}');
  print('calculaIdade: ${calculaIdade(DateTime(1987, 01, 15))}');
  print('calculaIdade: ${calculaIdade(DateTime(2021, 12, 01))}');
  print('calculaVolumeCilindrico: ${calculaVolumeCilindrico(diametro: 5, altura: 10)}');
  print('calculaVolumeCubico: ${calculaVolumeCubico(altura: 10, largura: 7, comprimento: 7)}');
  print('calculaDiametroPorCircunferencia: ${calculaDiametroPorCircunferencia(circunferencia: 10)}');
  print('calculaAumentoPercentual: ${calculaAumentoPercentual(valorInicial: 5.3, valorFinal: 7.4)}');
  print('regraTresSimples: ${regraTresSimples(num1: 10, num2: 18, num3: 15)}');
  print('regraTresComposta: ${regraTresComposta(num1: 5, num2: 4, num3: 15, num4: 2, num5: 3)}');
  print('calculadoraDatas: ${calculadoraDatas(dateTime: DateTime.now(), dias: 7, soma: false)}');
  print('dosagem: ${calcularDosagem(10.0, 0.5)}');
  print('pesoIdeal: ${calcularPesoIdeal(50.0, 100.0)}');
  print('necessidadesCaloricas: ${calcularNecessidadesCaloricas(10.0)}');
  print('taxaCrescimento: ${calcularTaxaCrescimento(1000.0, 500.0, 10)}');
  print('imc: ${calcularIMC(103.0, 1.89)}'); // imprime 0.04
  print('frequenciaCardiacaMaxima: ${calcularFrequenciaCardiacaMaxima(5)}'); // imprime 215
  print('volumeAgua: ${calcularVolumeAgua(10.0)}'); // imprime 7.5
  print('areaSuperficialCorporal: ${calcularAreaSuperficialCorporal(10.0, 20.0)}');
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

double regraTresSimples({
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

DateTime calculadoraDatas({
  required DateTime dateTime,
  required int dias,
  required bool soma,
}) {
  if (soma) {
    return dateTime.add(Duration(days: dias));
  } else {
    return dateTime.subtract(Duration(days: dias));
  }
}

double calculaCalcarioTerra({
  required double v1,
  required double v2,
  required double t,
  required double prnt,
}) {
  return (v2 - v1) * t / prnt;
}

double calcularDosagem(double pesoAnimal, double concentracaoMedicamento) {
  return pesoAnimal * concentracaoMedicamento; // dosagem
}

double calcularPesoIdeal(double alturaAnimal, double fatorConversao) {
  return (alturaAnimal - fatorConversao) * 0.9; //peso
}

double calcularNecessidadesCaloricas(double pesoIdealAnimal) {
  return (pesoIdealAnimal * 30) + 70; // kalorias
}

double calcularTaxaCrescimento(double pesoAtualAnimal, double pesoNascerAnimal, int idadeAnimal) {
  return (pesoAtualAnimal - pesoNascerAnimal) / idadeAnimal;
}

double calcularIMC(double pesoAnimal, double alturaAnimal) {
  return pesoAnimal / (alturaAnimal * alturaAnimal);
}
/*-------------------------------
IMC	Classificação
< 18,5	        Abaixo do peso
18,5 - 24,9	    Peso ideal
25,0 - 29,9	    Excesso de peso
> 30,0	        Obesidade
--------------------------------*/

int calcularFrequenciaCardiacaMaxima(int idadeAnimal) {
  return 220 - idadeAnimal;
}

double calcularVolumeAgua(double pesoAnimal) {
  return pesoAnimal * 0.75;
}

double calcularAreaSuperficialCorporal(double comprimentoAnimal, double larguraAnimal) {
  return (comprimentoAnimal * larguraAnimal) / 3.14;
}
