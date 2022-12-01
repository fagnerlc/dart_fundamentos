void main(List<String> args) {
  print(periodicidade(dataEvento: DateTime.now(), ciclos: 7, periodicidade: 30));
  print(calculaIdade(DateTime(1987, 01, 15)));
  print(calculaIdade(DateTime(2021, 12, 01)));
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
  DateTime dataCorente = DateTime.now();
  int idade = dataCorente.year - dataNascimento.year;
  int mes1 = dataCorente.month;
  int mes2 = dataNascimento.month;
  if (mes2 > mes1) {
    idade--;
  } else if (mes1 == mes2) {
    int day1 = dataCorente.day;
    int day2 = dataNascimento.day;
    if (day2 > day1) {
      idade--;
    }
  }
  return idade;
}
