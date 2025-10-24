 import 'dart:io';

class NombreNegatifException implements Exception {
  String message;
  NombreNegatifException(this.message);

  @override
  String toString() => "NombreNegatifException : $message";
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    double nombre = double.parse(stdin.readLineSync()!);

    if (nombre < 0) {
      throw NombreNegatifException("Le nombre ne peut pas être négatif !");
    }

    print("Le carré de $nombre est ${nombre * nombre}");
  } catch (e) {
    print("Erreur détectée : $e");
  } finally {
    print("Fin d'opération");
  }
}