class AppValidators {


  String? cardNumberValidator(value){
    if (value == null || value.isEmpty) {
      return 'Please enter a card number!';
    }
    return null;
  }

  String? cardHolderNameValidator(value){
    if (value == null || value.isEmpty) {
      return 'Please enter a cardholder name!';
    }
    return null;
  }

  String? cvvCodeValidator(value){
    if (value == null || value.isEmpty) {
      return 'Enter CVV code';
    }
    return null;
  }


  String? dateValidator(value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    final components = value.split("/");
    if (components.length == 2) {
      final month = int.tryParse(components[0]);
      final year = int.tryParse(components[1]);
      if (month != null && year != null) {
        final date = DateTime(year, month);
        if (date.year == year && date.month == month) {
          return null;
        }
      }
    }
    return "Wrong Date";
  }
}
