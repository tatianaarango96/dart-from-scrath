import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('Menu:');
    print('1. Positive Power (Solicita al usuario un número y eleva este número al cuadrado solo si es positivo.)');
    print('2. Double or Triple (Solicita al usuario dos números. Si el primero es mayor, devuelva su doble, de lo contrario devuelva el triple del segundo.)');
    print('3 .Root or Square (Pide al usuario un número. Si es positivo, devuelve su raíz cuadrada, de lo contrario, devuelve su cuadrado.)');
    print('4. circlePerimeter (Pide al usuario el radio de un círculo y calcula su perímetro.)');
    print('5. midweekDay (Solicita al usuario un número entre 1 y 7 y muestra el día de la semana correspondiente, pero solo considerando los días laborables)');
    print('6. taxCalculator (Solicita al usuario su salario anual y, si este excede los 12000, muestra el impuesto a pagar que es el 15% del excedente.)');
    print('7. remainderFinder (Solicita dos números y muestra el residuo de la división del primero entre el segundo.)');
    print('8. SumofEvens (Calcula y muestra la suma de los números pares entre 1 y 50.)');   
    print('9. fractionDifference (Solicita al usuario los valores para dos fracciones y muestra la diferencia entre esas fracciones.)');                   
    print('10. stringLength (Pide una palabra al usuario y muestra la longitud de esa palabra.)');                   
    print('11. AverageofFour (Pide al usuario cuatro números y muestra el promedio.)');  
    print('12. SmallestofFive (Pide al usuario cinco números y muestra el más pequeño)');  
    print('13. VowelCounter (Pide una palabra al usuario y devuelve el número de vocales en esa palabra)');  
    print('14. FactorialFinder (Pide un número al usuario y devuelve el factorial de ese número.)');  
    print('15.  InRangeValidator (Pide un número al usuario y verifica si está en el rango de 10 a 20.)');  
    
    print('0. Salir');
    stdout.write('Ingrese una opción: ');

    // Leer la opción del usuario
    String opcion = stdin.readLineSync() ?? '';
    switch (opcion) {
      case '1':
        positivePower();
        break;
        case '2':
        doubleOrTriple();
        break;
        case '3':
       rootOrSquare();
        break;
        case '4':
        circlePerimeter();
        break;
        case '5':
        midweekDay();
        break;
       case '6':
       taxCalculator();
       break;
        case '7':
       remainderFinder();
       break;
       case '8':
       SumofEvens();
       break;
       case '9':
       fractionDifference();
       break;
       case '10':
       stringLength();
       break;
       case '11':
       AverageofFour();
       break;
       case '12':
       SmallestofFive();
       break;
       case '13':
       VowelCounter();
       break;
       case '14':
       FactorialFinder();
       break;
       case '15':
       InRangeValidator();
       break;
      case '0':
        print('Saliendo del programa.');
        return;
      default:
        print('Opción no válida. Por favor, ingrese una opción válida.');
        break;
    }
  }
}

void positivePower() {
  stdout.write('Ingrese un número: ');
  String input = stdin.readLineSync() ?? '';
  double numero = double.tryParse(input) ?? 0;

  if (numero > 0) {
    double resultado = numero * numero;
    print('El cuadrado de $numero es $resultado.');
  } else {
    print('El número debe ser positivo para elevarlo al cuadrado.');
  }
}
  void doubleOrTriple() {
  stdout.write('Ingrese el primer número: ');
  String input1 = stdin.readLineSync() ?? '';
  double numero1 = double.tryParse(input1) ?? 0;

  stdout.write('Ingrese el segundo número: ');
  String input2 = stdin.readLineSync() ?? '';
  double numero2 = double.tryParse(input2) ?? 0;

  if (numero1 == 0 || numero2 == 0) {
    print('Entrada no válida. Ambos números deben ser valores numéricos.');
    return;
  }

  double resultado = (numero1 > numero2) ? numero1 * 2 : numero2 * 3;
  print('Resultado: $resultado');
}
void rootOrSquare() {
  stdout.write('Ingresa un número: ');
  String input = stdin.readLineSync() ?? '';
  double numero = double.tryParse(input) ?? 0;

  if (numero > 0) {
    double resultado = sqrt(numero);
    print('Resultado: $resultado');
  } else {
    double resultado = numero * numero; // Elevar al cuadrado
    print('Resultado: $resultado');
  }
}
void circlePerimeter() {
  double radio;

  stdout.write('Ingresa el radio del círculo: ');
  String input = stdin.readLineSync() ?? '';
  radio = double.tryParse(input) ?? -1;

  if (radio >= 0) {
    double perimetro = 2 * pi * radio;
    print('El perímetro del círculo es: $perimetro');
  } else {
    print('El radio no puede ser negativo.');
  }
}
void midweekDay() {
  stdout.write('Ingresa un número del 1 al 7: ');
  String input = stdin.readLineSync() ?? '';
  int numero = int.tryParse(input) ?? 0;

  switch (numero) {
    case 1:
      print('Lunes (Laborable)');
      break;
    case 2:
      print('Martes (Laborable)');
      break;
    case 3:
      print('Miércoles (Laborable)');
      break;
    case 4:
      print('Jueves (Laborable)');
      break;
    case 5:
      print('Viernes (Laborable)');
      break;
    default:
      print('Día no laborable o número fuera de rango.');
      break;
  }
}
void taxCalculator() {
  stdout.write('Ingresa tu salario anual: ');
  String input = stdin.readLineSync() ?? '';
  double salarioAnual = double.tryParse(input) ?? 0.0;

  double salarioMinimo = 12000.0;

  if (salarioAnual > salarioMinimo) {
    double excedente = salarioAnual - salarioMinimo;
    double impuesto = 0.15 * excedente;

    print('Tu salario anual excede los ${salarioMinimo.toStringAsFixed(2)}.');
    print('Impuesto a pagar: \$${impuesto.toStringAsFixed(2)}');
  } else {
    print('Tu salario anual no excede los 12,000. No tienes que pagar impuesto.');
  }
}
void remainderFinder() {
  stdout.write('Ingresa el primer número: ');
  String input1 = stdin.readLineSync() ?? '';
  double numero1 = double.tryParse(input1) ?? 0.0;

  stdout.write('Ingresa el segundo número: ');
  String input2 = stdin.readLineSync() ?? '';
  double numero2 = double.tryParse(input2) ?? 0.0;

  if (numero2 != 0) {
    double residuo = numero1 % numero2;
    print('El residuo de $numero1 entre $numero2 es: $residuo');
  } else {
    print('No se puede dividir por cero. Ingresa un segundo número diferente de cero.');
  }
}
void SumofEvens() {
  int suma = 0;

  for (int i = 2; i <= 50; i += 2) {
    suma += i;
  }

  print('La suma de los números pares entre 1 y 50 es: $suma');
}
void fractionDifference() {
  stdout.write('Ingresa el numerador de la primera fracción: ');
  String inputNumerador1 = stdin.readLineSync() ?? '';
  int numerador1 = int.tryParse(inputNumerador1) ?? 0;

  stdout.write('Ingresa el denominador de la primera fracción (distinto de cero): ');
  String inputDenominador1 = stdin.readLineSync() ?? '';
  int denominador1 = int.tryParse(inputDenominador1) ?? 0;

  stdout.write('Ingresa el numerador de la segunda fracción: ');
  String inputNumerador2 = stdin.readLineSync() ?? '';
  int numerador2 = int.tryParse(inputNumerador2) ?? 0;

  stdout.write('Ingresa el denominador de la segunda fracción (distinto de cero): ');
  String inputDenominador2 = stdin.readLineSync() ?? '';
  int denominador2 = int.tryParse(inputDenominador2) ?? 0;

  if (denominador1 != 0 && denominador2 != 0) {
    // Calcular la diferencia de fracciones
    int nuevoDenominadorComun = denominador1 * denominador2;
    int nuevoNumerador1 = numerador1 * denominador2;
    int nuevoNumerador2 = numerador2 * denominador1;

    int diferenciaNumerador = nuevoNumerador1 - nuevoNumerador2;

    print('La diferencia de las fracciones $numerador1/$denominador1 y $numerador2/$denominador2 es: $diferenciaNumerador/$nuevoDenominadorComun');
  } else {
    print('El denominador de ambas fracciones debe ser un número válido y distinto de cero.');
  }
}
void stringLength() {
  stdout.write('Ingrese una palabra: ');
  String? palabra = stdin.readLineSync();

  if (palabra != null && palabra.isNotEmpty) {
    int longitud = palabra.length;
    print('Resultado: $longitud');
  } else {
    print('La entrada no puede estar vacía.');
  }
}
void AverageofFour() {
  print('Ingrese cuatro números para calcular su promedio:');
  double numero1 = pedirNumero('Número 1: ');
  double numero2 = pedirNumero('Número 2: ');
  double numero3 = pedirNumero('Número 3: ');
  double numero4 = pedirNumero('Número 4: ');

  double promedio = (numero1 + numero2 + numero3 + numero4) / 4;

  print('El promedio de los números ingresados es: $promedio');
}

double pedirNumero(String mensaje) {
  double numero;
  while (true) {
    stdout.write(mensaje);
    String input = stdin.readLineSync() ?? '';
    if (double.tryParse(input) != null) {
      numero = double.parse(input);
      return numero;
    } else {
      print('Entrada no válida. Por favor, ingresa un número válido.');
    }
  }
}
void SmallestofFive() {
  print('Por favor, ingresa cinco números.');

  double numeroMinimo = double.maxFinite; // Inicializar con un valor muy grande.

  for (int i = 1; i <= 5; i++) {
    stdout.write('Número $i: ');
    String input = stdin.readLineSync() ?? '';
    double numero;

    if (double.tryParse(input) != null) {
      numero = double.parse(input);
      numeroMinimo = numeroMinimo < numero ? numeroMinimo : numero;
    } else {
      print('Por favor, ingresa un número válido.');
      i--; // Restar 1 a i para repetir la entrada del número inválido.
    }
  }

  if (numeroMinimo == double.maxFinite) {
    print('No se ingresaron números válidos.');
  } else {
    print('El número más pequeño de los cinco números ingresados es: $numeroMinimo');
  }
}
void VowelCounter() {
  stdout.write('Por favor, ingrese una palabra: ');
  String? palabraVocales = stdin.readLineSync();

  if (palabraVocales != null) {
    int contador = contadorVocales(palabraVocales);
    print('Resultado total de vocales: $contador');
  } else {
    print('La entrada no puede estar vacía.');
  }
}

int contadorVocales(String palabra) {
  int contador = 0;
  for (var letra in palabra.toLowerCase().runes) {
    final char = String.fromCharCode(letra);
    if ('aeiou'.contains(char)) {
      contador++;
    }
  }
  return contador;
}
void FactorialFinder() {
  stdout.write('Ingresa un número para calcular su factorial: ');
  String input = stdin.readLineSync() ?? '';
  int numeroFactorial = int.tryParse(input) ?? -1;

  if (numeroFactorial >= 0) {
    BigInt factorial = calcularFactorial(numeroFactorial);
    print('Resultado: $factorial');
  } else {
    print('Ingresa un número entero válido.');
  }
}

BigInt calcularFactorial(int n) {
  if (n < 0) {
    throw ArgumentError('No ingresar números negativos.');
  }

  BigInt resultado = BigInt.one;
  for (int i = 2; i <= n; i++) {
    resultado *= BigInt.from(i);
  }

  return resultado;
}
void InRangeValidator() {
  stdout.write('Ingresa un número para verificar si está en el rango de 10 a 20: ');
  String input = stdin.readLineSync() ?? '';
  int numeroRango = int.tryParse(input) ?? -1;

  if (numeroRango >= 10 && numeroRango <= 20) {
    print('Resultado: Está en el rango.');
  } else {
    print('Resultado: Fuera del rango.');
  }
}