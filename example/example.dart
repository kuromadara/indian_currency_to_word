import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:indian_currency_to_word/indian_currency_to_word.dart";

class NoToWord extends StatefulWidget {
  const NoToWord({Key? key}) : super(key: key);

  @override
  State<NoToWord> createState() => _NoToWordState();
}

class _NoToWordState extends State<NoToWord> {
  final converter = AmountToWords();

  var number = 9999.10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number to Word'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'With Decimal',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Text(
              'Number: $number',
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            Text(
              'Word: ${converter.convertAmountToWords(number)}',
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            const Text(
              'Without Decimal',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Text(
              'Number: $number',
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            Text(
              'Word: ${converter.convertAmountToWords(number, ignoreDecimal: true)}',
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
