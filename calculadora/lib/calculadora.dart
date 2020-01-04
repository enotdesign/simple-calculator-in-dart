import 'dart:io';

class Calculadora{
  //propiedades
  int n1;
  int n2;
  int accion;

  Calculadora(){
    stdout.writeln('-----*BIENVENIDOS* APP CALCULADORA-----');
    stdout.writeln('Primer Numero:');
    this.n1 = int.parse(stdin.readLineSync());

    stdout.writeln('Segundo Numero:');
    this.n2 = int.parse(stdin.readLineSync());

    stdout.writeln('-----ACCION A EJECUTAR-----');
    stdout.writeln('1: suma, 2: resta, 3: Multiplicar 4: Dividir');

    this.accion = int.parse(stdin.readLineSync());

    _accion(accion);
  }

  int _accion(int accion){
    this.accion = accion;

    switch (accion) {
      case 1:
        _rsl();
        _suma(n1, n2);
        break;
      case 2:
        _rsl();
        _resta(n1, n2);
        break;
      case 3:
        _rsl();
        _multi(n1, n2);
        break;
      case 4:
        _rsl();
        _div(n1, n2);
        break;
      default:
        otro();

    }
  }

  _suma(n1,n2) => print(n1 + n2);
  _resta(n1,n2) => print(n1 - n2);
  _multi(n1,n2) => print(n1 * n2);
  _div(n1,n2) => print(n1 / n2);
  void _rsl() => print("-----RESULTADO-----");

  void otro(){
    stdout.writeln('*El numero no esta en la accion a ejecutar.');
    stdout.writeln('Desea hacer otro calculo? [y/n]');
    var resp = stdin.readLineSync();
    if (resp == 'y') {
      //si la resp es Y le paso la accion calculadora
      Calculadora();
    
    } else {
      return print('-----GRACIAS-----');
    }
    
  }

}