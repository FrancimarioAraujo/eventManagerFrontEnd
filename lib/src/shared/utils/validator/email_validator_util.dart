class EmailValidatorUtil {
  bool isEmail(String input) {
    final emailRegex = RegExp(
        r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.)+[a-zA-Z]{2,}$');

    return emailRegex.hasMatch(input);
  }
}
