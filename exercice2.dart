 import 'dart:io';

void main() {
  try {
    stdout.write("Entrez votre âge : ");
    String input = stdin.readLineSync()!;
    int age = int.parse(input);
    print("Votre âge est : $age ans");
  } on FormatException catch (e) {
    print("Erreur : Le format saisi n’est pas valide.");
  }

}