 void main() {
  try {
    // Tentative de division par zéro
    int result = 12 ~/ 0;
    print("Résultat : $result");
  } catch (e) {
    // Si une erreur survient (ex : division par zéro)
    print("Division impossible");
  }
}