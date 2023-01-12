import 'package:get/get.dart';

class HomeController extends GetxController {
  var angkaPertama = '0'.obs;
  var angkaKedua = '10'.obs;
  var operator = '+'.obs;
  var hasilHitung = '10'.obs;

  hapusAngka() {
    angkaPertama.value = '0';
    angkaKedua.value = '0';
    operator.value = '+';
    hasilHitung.value = '0';
  }

  addNumber(String number) {
    if (hasilHitung.value == '0') {
      return hasilHitung.value = number;
    }
    // agar saat - didepan tidak bisa -01
    if (hasilHitung.value == '-0') {
      return hasilHitung.value = '-$number';
    }
    hasilHitung.value = hasilHitung.value + number;
  }

  buatNegarif() {
    if (hasilHitung.startsWith('-')) {
      hasilHitung.value = hasilHitung.value.replaceFirst('-', '');
    } else {
      hasilHitung.value = '-${hasilHitung.value}';
    }
  }

  addDecimal() {
    if (hasilHitung.contains('.')) return;

    if (hasilHitung.startsWith('0')) {
      hasilHitung.value = '0.';
    } else {
      hasilHitung.value = '${hasilHitung.value}.';
    }
  }

  pilihOperation(String newOperation) {
    operator.value = newOperation;
    angkaPertama.value = hasilHitung.value;
    hasilHitung.value = '0';
  }

  deleteLastEntry() {
    if (hasilHitung.value.replaceAll('-', '').length > 1) {
      hasilHitung.value =
          hasilHitung.value.substring(0, hasilHitung.value.length - 1);
    } else {
      hasilHitung.value = '0';
    }
  }

  perhitunganAngkat() {
    double number1 = double.parse(angkaPertama.value);
    double number2 = double.parse(hasilHitung.value);

    angkaKedua = hasilHitung;

    switch (operator.value) {
      case '+':
        hasilHitung.value = '${number1 + number2}';
        break;
      case '-':
        hasilHitung.value = '${number1 - number2}';
        break;
      case '/':
        hasilHitung.value = '${number2 / number1}';
        break;
      case 'x':
        hasilHitung.value = '${number1 * number2}';
        break;
      default:
        return;
    }
    if (hasilHitung.value.endsWith('.0')) {
      hasilHitung.value =
          hasilHitung.value.substring(0, hasilHitung.value.length - 2);
    }
  }
}
