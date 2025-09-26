import 'dart:io';

double _readNumber(String label) {
  while (true) {
    stdout.write('$label: ');
    final input = stdin.readLineSync();
    if (input == null) continue;
    final value = double.tryParse(input.trim());
    if (value != null) {
      return value;
    }
    print('Input tidak valid. Silakan masukkan angka.');
  }
}

// Fungsi utama program.
void main() {
  while (true) {
    print('\n=== Simple Calculator ===');
    print('1) + (Tambah)');
    print('2) - (Kurang)');
    print('3) * (Kali)');
    print('4) / (Bagi)');
    print('5) Exit');
    stdout.write('Pilih [1-5]: ');
    final choice = stdin.readLineSync()?.trim();

    if (choice == '5') {
      print('Good Bye!');
      return;
    }

    if (choice != '1' && choice != '2' && choice != '3' && choice != '4') {
      print('Pilihan tidak valid.');
      continue;
    }

    final a = _readNumber('Masukkan angka pertama');
    final b = _readNumber('Masukkan angka kedua');

    switch (choice) {
      case '1':
        print('Hasil: ${a + b}');
        break;
      case '2':
        print('Hasil: ${a - b}');
        break;
      case '3':
        print('Hasil: ${a * b}');
        break;
      case '4':
        if (b == 0) {
          print('Error: Tidak bisa membagi dengan nol.');
        } else {
          print('Hasil: ${a / b}');
        }
        break;
      default:
        print('Pilihan tidak dikenal.');
    }
  }
}
