library indian_currency_to_word;

/// A class that converts an amount in Indian currency to words.
class AmountToWords {
  final Map<int, String> _words = {
    0: '',
    1: 'One',
    2: 'Two',
    3: 'Three',
    4: 'Four',
    5: 'Five',
    6: 'Six',
    7: 'Seven',
    8: 'Eight',
    9: 'Nine',
    10: 'Ten',
    11: 'Eleven',
    12: 'Twelve',
    13: 'Thirteen',
    14: 'Fourteen',
    15: 'Fifteen',
    16: 'Sixteen',
    17: 'Seventeen',
    18: 'Eighteen',
    19: 'Nineteen',
    20: 'Twenty',
    30: 'Thirty',
    40: 'Forty',
    50: 'Fifty',
    60: 'Sixty',
    70: 'Seventy',
    80: 'Eighty',
    90: 'Ninety'
  };

  /// A list that stores the words corresponding to the digits in Indian currency (hundred, thousand, lakh, crore).
  final List<String> _digits = ['', 'Hundred', 'Thousand', 'Lakh', 'Crore'];

  /// Converts an amount in Indian currency to words.
  ///
  /// The [number] argument must be a double representing the amount in Indian currency.
  /// If the number is less than zero, this method returns "Zero".
  /// If the number is greater than 999999999, this method returns "Number is too large".
  ///
  /// Returns a string that represents the amount in words, in the format "X Rupees and Y Paise",
  /// where X is the whole number in words and Y is the decimal part in words.
  /// If the decimal part is zero, it just returns the whole number in words.
  ///
  String convertAmountToWords(double number) {
    if (number < 0) {
      return "Zero";
    }
    if (number > 999999999) {
      return "Number is too large";
    }
    int wholeNumber = number.floor();
    int decimal = ((number - wholeNumber) * 100).round();
    String hundred;
    int digitsLength = wholeNumber.toString().length;
    int i = 0;
    List<String> str = [];
    while (i < digitsLength) {
      int divider = (i == 2) ? 10 : 100;
      int currentNumber = wholeNumber % divider;
      wholeNumber = wholeNumber ~/ divider;
      i += (divider == 10) ? 1 : 2;
      if (currentNumber > 0) {
        String plural = (str.isNotEmpty && currentNumber > 9) ? 's' : '';
        hundred = (str.length == 1 && str[0] != '') ? ' and ' : '';
        str.add((currentNumber < 21)
            ? '${_words[currentNumber]} ${_digits[str.length]}$plural $hundred'
            : '${_words[(currentNumber / 10).floor() * 10]} ${_words[currentNumber % 10]} ${_digits[str.length]}$plural $hundred');
      } else {
        str.add('');
      }
    }
    String rupees = str.reversed.join('');
    String paise = (decimal > 0)
        ? '${_words[(decimal / 10).floor()]} ${_words[decimal % 10]} Paise'
        : '';
    return '$rupees Rupees${paise != '' ? ' and $paise' : ''}';
  }
}
