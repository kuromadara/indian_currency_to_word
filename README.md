# indian_currency_to_word

A Flutter package for both iOS and Android that converts a given amount to word in Indian Locale. Currently it support conversion till Crore. The maximum number is (999999999). 

## Features

Converts amount to word in indian locale.

## Getting started

There is no prerequisites required to use this library. The library is usefull when you are working with money related projects one such example could be a payroll system.

## Usage

**Installing**

Run the command:
```console
foo@bar:~$ flutter pub add indian_currency_to_word
```

*OR*

Add a line like this to your package's pubspec.yaml:
```yaml
dependencies:
  indian_currency_to_word: ^0.0.7
```

**Importing**
```dart
import "package:indian_currency_to_word/indian_currency_to_word";
```

**NOTE**
The number must be double and there is a optional argument ignoreDecimal
```dart
ignoreDecimal: false
```
by default its set to false. 

Example:

*With decimal*
```dart
import "package:indian_currency_to_word/indian_currency_to_word";
final converter = AmountToWords();
// The number argument must be of type double.
var number = 999991.12;
var word =  converter.convertAmountToWords(number);
print(word);
```

*Without decimal*
```dart
import "package:indian_currency_to_word/indian_currency_to_word";
final converter = AmountToWords();
// The number argument must be of type double.
var number = 999991.12;
var word =  converter.convertAmountToWords(number, ignoreDecimal: true);
print(word);
```

## Additional information

To contribute or provide any suggestion contact me on my github or check my portfolio for contact information:
[Porfolio](https://www.dayananda.tech/)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=kuromadara/indian_currency_to_word&type=Date)](https://star-history.com/#kuromadara/indian_currency_to_word&Date)

## Support the Project

If you find this package helpful, consider buying me a coffee to support the ongoing development and maintenance of this project:

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/dayd)
