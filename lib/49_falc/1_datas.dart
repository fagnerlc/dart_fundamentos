import 'package:intl/intl.dart';

void main(List<String> args) {
  var dataAgora = DateTime.now();
  print(dataAgora);

  DateFormat formatter = DateFormat('dd/MM/yyyy');
  String dataFormatada = formatter.format(dataAgora);
  print(dataFormatada);
}

retornaData() {}
