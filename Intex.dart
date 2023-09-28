import 'dart:io';

void main() {
  print('¡Bienvenido!');
  print ('Por favor, introduce tu nombre: ');

  String? nombre = stdin.readLineSync();

  print('¡Un gusto conocerte, $nombre!');
}