import 'dart:io';

void main(List<String> arguments) {
  int a = 10;
  String input = stdin.readLineSync();
  int number = int.tryParse(input);
  print('----------------');
  print('langsung menampilkan hasil print');
  print('----------------');
  print('menampilkan hasil inputan');
  print(number + 10);
  stdout.write('Masukan angka = ');
  String angka = stdin.readLineSync();
  int hasil = int.tryParse(angka) + a;
  stdout.write('hasil inputan angka = ' + hasil.toString());
}
