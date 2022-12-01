import 'package:intl/intl.dart';

void main(List<String> args) {
  var dataAgora = DateTime.now();
  print(dataAgora);

  DateFormat formatter = DateFormat('dd/MM/yyyy');
  String dataFormatada = formatter.format(dataAgora);
  print(dataFormatada);
  print(retornaIdadeDias(DateTime(1987, 01, 15)));

  print(periodicidade(DateTime.now(), 7, 30));
}

retornaData() {}

int retornaIdadeDias(DateTime dataNascimento) {
  int dias = DateTime.now().difference(dataNascimento).inDays;
  return dias;
}

List<DateTime> periodicidade(
  DateTime dataEvento,
  int ciclos,
  int periodicidade,
) {
  List<DateTime> listaDatas = [];
  DateTime dataRetornada;
  DateTime dataAgora = dataEvento;
  for (var i = 0; i < ciclos; i++) {
    dataRetornada = dataAgora.add(Duration(days: periodicidade));
    listaDatas.add(dataRetornada);
    dataAgora = dataAgora.add(Duration(days: periodicidade));
  }
  return listaDatas;
}

List<DateTime> periodicidadeCase(
  String periodicidade,
  DateTime dataEvento,
  int ciclos, {
  int? periodicidadePersonalizada,
}) {
  List<DateTime> listaDatas = [];
  DateTime dataRetornada;
  DateTime dataAgora = dataEvento;
  switch (periodicidade) {
    case 'diario':
      {
        for (var i = 0; i < ciclos; i++) {
          dataRetornada = dataAgora.add(Duration(days: 1));
          listaDatas.add(dataRetornada);
          dataAgora = dataAgora.add(Duration(days: 1));
        }
      }

      break;
    case 'semanal':
      {
        for (var i = 0; i < ciclos; i++) {
          dataRetornada = dataAgora.add(Duration(days: 7));
          listaDatas.add(dataRetornada);
          dataAgora = dataAgora.add(Duration(days: 7));
        }
      }

      break;
    case 'mensal':
      {
        for (var i = 0; i < ciclos; i++) {
          dataRetornada = dataAgora.add(Duration(days: 30));
          listaDatas.add(dataRetornada);
          dataAgora = dataAgora.add(Duration(days: 30));
        }
      }

      break;
    case 'bimensal':
      {
        for (var i = 0; i < ciclos; i++) {
          dataRetornada = dataAgora.add(Duration(days: 60));
          listaDatas.add(dataRetornada);
          dataAgora = dataAgora.add(Duration(days: 60));
        }
      }

      break;
    case 'trimensal':
      {
        for (var i = 0; i < ciclos; i++) {
          dataRetornada = dataAgora.add(Duration(days: 90));
          listaDatas.add(dataRetornada);
          dataAgora = dataAgora.add(Duration(days: 90));
        }
      }

      break;
    case 'semestral':
      {
        for (var i = 0; i < ciclos; i++) {
          dataRetornada = dataAgora.add(Duration(days: 180));
          listaDatas.add(dataRetornada);
          dataAgora = dataAgora.add(Duration(days: 180));
        }
      }

      break;
    case 'anual':
      {
        for (var i = 0; i < ciclos; i++) {
          dataRetornada = dataAgora.add(Duration(days: 365));
          listaDatas.add(dataRetornada);
          dataAgora = dataAgora.add(Duration(days: 365));
        }
      }

      break;
    case 'personalizado':
      {
        for (var i = 0; i < ciclos; i++) {
          dataRetornada = dataAgora.add(Duration(days: periodicidadePersonalizada!));
          listaDatas.add(dataRetornada);
          dataAgora = dataAgora.add(Duration(days: periodicidadePersonalizada));
        }
      }

      break;

    default:
  }
  return listaDatas;
}
