import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/excercises/a_square_of_squares/solutions/best_answer.dart';

class SquareImpl extends StatefulWidget {
  @override
  _SquareImplState createState() => _SquareImplState();
}

class _SquareImplState extends State<SquareImpl> {
  String solution = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Code'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.numberWithOptions(signed: true),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a number',
                ),
                onChanged: (String number) {
                  final n = int.parse(number);
                  setState(() {
                    solution = showSolution(n);
                  });
                },
              ),
              SizedBox(height: 20.0),
              if (solution.isNotEmpty)
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      solution,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  String showSolution(int n) => '$n => ${isSquare(n)}';
}
