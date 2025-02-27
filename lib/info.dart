import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  // A constructor with parameter
  const Info({super.key, required this.bmi});

  final String bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Mass Index Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Body mass index (BMI) is a value derived from the mass (weight) and height of '
                  'a person.\n\nThe BMI is defined as the body mass divided by the square of the body '
                  'height, and is expressed in units of kg/m², resulting from mass in kilograms '
                  '(kg) and height in metres (m).',
            ),
            Table(
              border: TableBorder.all(color: Colors.orangeAccent),
              children: [
                TableRow(children: [
                  TableCell(
                    child: Text(
                      'BMI Value',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TableCell(
                    child: Text(
                      'Classification',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Text('Below 18.5', textAlign: TextAlign.center),
                  ),
                  TableCell(
                    child: Text('Underweight', textAlign: TextAlign.center),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Text('18.5 to 24.9', textAlign: TextAlign.center),
                  ),
                  TableCell(
                    child: Text('Normal', textAlign: TextAlign.center),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Text('More than 25', textAlign: TextAlign.center),
                  ),
                  TableCell(
                    child: Text('Overweight', textAlign: TextAlign.center),
                  ),
                ]),
              ],
            ),
            bmi == ''
                ? const Text('Please Enter your weight and height')
                : Text('Your Body Mass Index is: $bmi'), // Fixed string concatenation

            const Expanded(child: SizedBox()), // Expanded widget correctly placed

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
