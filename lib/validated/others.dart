String? validateTextIsEmpty(String? value, [String? msg]) {
  if (value == null || value.isEmpty) {
    return msg ?? 'This field is required';
  }
  return null;
}
