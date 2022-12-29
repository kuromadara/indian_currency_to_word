<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

A Flutter package for both iOS and Android that converts a given amount to word in Indian Locale. Currently it support conversion till Crore. The maximum number is (999999999). 

## Features

Converts amount to word in indian locale.

## Getting started

There is no prerequisites required to use this library. The library is usefull when you are working with money related projects one such example could be a payroll system.

## Usage

```dart
import "package:indian_currency_to_word/indian_currency_to_word";

final converter = AmountToWords();
// The number argument must be of type double.
var number = 999999991.10;

var word =  converter.convertAmountToWords(number);
```

## Additional information

To contribute or provide any suggestion contact me on my github or check my portfolio for contact information:

[Porfolio](https://www.dayananda.tech/)
