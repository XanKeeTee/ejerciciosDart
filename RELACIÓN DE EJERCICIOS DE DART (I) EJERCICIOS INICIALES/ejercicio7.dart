import 'dart:math';
import 'dart:io';

void main() {
  double a = 1.0;
  double b = -5.0;
  double c = 6.0;

  print('Ecuación: (${a})x² + (${b})x + (${c}) = 0\n');

  if (a == 0) {
    if (b == 0) {
      print('No hay ecuación que resolver.');
    } else {
      double x = -c / b;
      print('Es una ecuación lineal. La única raíz real es: x = $x');
    }
    return;
  }

  double discriminante = pow(b, 2) - (4 * a * c);

  if (discriminante < 0) {
    print('Las raíces no son reales (son números complejos).');
  } else if (discriminante == 0) {
    // Una única raíz real (doble)
    double x = -b / (2 * a);
    print('La ecuación tiene una única raíz real:');
    print('x = $x');
  } else {
    // Dos raíces reales distintas
    double x1 = (-b + sqrt(discriminante)) / (2 * a);
    double x2 = (-b - sqrt(discriminante)) / (2 * a);
    print('La ecuación tiene dos raíces reales:');
    print('x1 = $x1');
    print('x2 = $x2');
  }
}