abstract class Validators {
  static String? email(String? value) {
    if (value == null) return null;
    final regex = RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
    final isValid = regex.hasMatch(value);
    return isValid ? null : 'Invalid email';
  }
}
