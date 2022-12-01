void main(List<String> args) {
  print(periodicidade(dataEvento: DateTime.now(), ciclos: 7, periodicidade: 30));
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
