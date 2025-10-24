 class MotdepasseCourtException implements Exception {
  String message;
  MotdepasseCourtException(this.message);

  @override
  String toString() => "MotdepasseCourtException : $message";
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException("Le mot de passe doit contenir au moins 6 caractères !");
  }
  print("Mot de passe valide.");
}

void main() {
  try {
    verifierMotdepasse("123");
  } catch (e) {
    print("Erreur détectée : $e");
  }
}