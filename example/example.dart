import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:indian_currency_to_word/indian_currency_to_word.dart";

class NoToWord extends StatelessWidget {
  final converter = AmountToWords();
  var number = 999999999.10;
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
            Text(
              'Number: $number',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'Word: ${converter.convertAmountToWords(number)}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
