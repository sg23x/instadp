dynamic validatePhone(
  String value,
) {
  if (value.length < 10) {
    return 'Enter a valid Phone Number,';
  } // final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
  // if (!nameExp.hasMatch(value))
  //   return 'Please enter only alphabetical character.';
}

dynamic validateAadhar(
  String value,
) {
  if (value.length != 12) {
    return 'Enter a valid Aadhar Number,';
  }
}

dynamic validateCAccount(
  String value,
  String accountNumber,
) {
  print("value $value");
  print("accountNumber $accountNumber");
  if (value != accountNumber.toString()) {
    return "Account Number does not match";
  }
}
