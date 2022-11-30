import 'package:intl/intl.dart';

void main(List<String> args) {
  String? nomeCompleto = 'Fagner Lopes Carvalho';

  print(nomeCompleto.length);

  var data = retornaData();
  print(data);
}

DateTime retornaData() {
  return DateTime.now();
}
