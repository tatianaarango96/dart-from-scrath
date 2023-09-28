import 'dart:io';
import 'menu/Intex.dart' as menu;

void main() {
  print('¡Bienvenido al programa!\n');
  stdout.write('Por favor, introduce tu nombre: '); // Usamos stdout para mostrar el mensaje

  String? nombre = stdin.readLineSync();
  print('¡Un gusto conocerte, $nombre! Por favor elige una opcion del siguiente Menu');
  menu.main(); // Llama al menú desde Intex.dart en la carpeta menu
}
