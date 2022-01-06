import 'dart:io';

void main(List<String> arguments) {
  print('Latihan percabangan dengan if');
  print('--------------------');
  stdout.write('Masukan bilangan secara random = ');
  int number = int.tryParse(stdin.readLineSync());

/* Didalam percabangan if ini , bisa tidak memakai kurung kurawal, dan tetap bisa jalan program yang 
kita tulis , karena hanya satu perintah saja. namun bahasa dart menyarankan agar memakai kurung kurawal
pada setiap flow stucture
*/
  if (number > 0) {
    print('Hasilnya adalah = bilangan positif');
  } else if (number < 0) {
    print('Hasilnya adalah = bilangan negatif');
  } else {
    print('Hasilnya adalah = bilangan nol');
  }
  print('\n');

  /*
  didalam if ada cara singkat , yaitu menggunakan arrow function. namun ini 
  dapat digunakan hanya ketika kita menentukan 1 pilihan perintah pada 2 opsi saja. 
  didalam if , hasil percabangan juga bisa ditampung dengan variabel lain
   */
  print('--------------------');
  print('mengunakan arrow function');
  String output;
  output = (number > 0) ? 'Bilangan positif' : 'bilangan negatif atau nol';
  stdout.write('Hasilnya adalah = ' + output);
  print('\n');

  /*
  perintah pada if juga dapat langsung dimasukan pada perintah print

  print dan stdout.write , merupakan perintah yang sama untuk menampilakn output.
  bedanya , jika print = setelah perintah selesai dijalankan maka akan langsung 
  berpindah pada baris baru ,namun stdout.write = setelah perintah selesai dijalankan tidak langsung 
  berpindah pada baris baru , namun pada sisi sebelah perintah tadi
   */
  print('---------------------');
  print('Perintah if yang dimasukan pada perintah print');
  print(((number > 0) ? 'Bilangan positif' : 'bilangan negatif atau nol'));
  stdout.write('Hasilnya adalah = ' +
      ((number > 0) ? 'Bilangan positif' : 'bilangan negatif atau nol'));
  print('\n');

/*
Hasil output tidak harus selalu string , namun juga bisa int . 
 */
  print('---------------------');
  print(
      'Perintah if yang dimasukan pada perintah print dan menampilkan numbernya');
  stdout.write(
      'Hasilnya adalah = ' + ((number > 0) ? number : number * -1).toString());
  print('\n');

  print('Latihan percabangan dengan switch case');
  print('---------------------');
  switch (number) {
    case 1:
      stdout.write('Hasilnya adalah = bilangan positif ' + number.toString());
      print('\n');
      break;
    case 2:
      stdout.write('Hasilnya adalah = bilangan positif ' + number.toString());
      print('\n');
      break;
    default:
      stdout.write('Bilangan lainnya');
      print('\n');
  }
}
