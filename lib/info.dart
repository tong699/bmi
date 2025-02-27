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
                'Body mass index (BMI) is a value derived from the mass (weight) and height of'
                'a person.\n\nThe BMI is defined as the body mass divided by the square of the body'
                'height, and is expressed in units of kg/m\u00B2, resulting from mass in kilograms'
                '(kg) and height in metres (m).'),
            Table(
              border: TableBorder.all(color: Colors.orangeAccent),
              children: [
                TableRow(children: [
                  TableCell(
                    child: Text('BMI Value'),
                  ),
                  TableCell(
                    child: Text('Classification'),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Text('Below 18.5'),
                  ),
                  TableCell(
                    child: Text('Underweight'),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Text('18.5 to 24.9'),
                  ),
                  TableCell(
                    child: Text('Normal'),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Text('More than 25'),
                  ),
                  TableCell(
                    child: Text('Overweight'),
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
