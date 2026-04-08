class AppValidator {
  AppValidator._();

  static String? required(String? value) {
    if (value == null || value.trim().isEmpty) return 'Este campo es requerido';
    return null;
  }

  static String? percentage(String? value) {
    if (value == null || value.trim().isEmpty) return 'Este campo es requerido';
    final num = double.tryParse(value);
    if (num == null || num < 1 || num > 100) return 'Ingrese un porcentaje entre 1 y 100';
    return null;
  }

  static String? futureDate(DateTime? date) {
    if (date == null) return 'Selecciona una fecha';
    if (date.isBefore(DateTime.now())) return 'La fehca debe ser futura';
    return null;
  }
}