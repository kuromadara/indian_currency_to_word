import 'package:flutter_test/flutter_test.dart';

import 'package:indian_currency_to_word/indian_currency_to_word.dart';

void main() {
  test('adds one to input values', () {
    final converter = AmountToWords();
    expect(converter.convertAmountToWords(2), 'Two');
    expect(converter.convertAmountToWords(-7), "Zero");
    expect(converter.convertAmountToWords(0), "Zero");
  });
}
