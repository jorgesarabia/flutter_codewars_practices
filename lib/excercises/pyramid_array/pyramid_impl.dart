import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/solutions/best_answer.dart';

class PyramidImpl extends StatefulWidget {
  @override
  _PyramidImpl createState() => _PyramidImpl();
}

class _PyramidImpl extends State<PyramidImpl> {
  String solution = '';
  String error = '';

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
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a number',
                ),
                onChanged: (String number) {
                  final n = int.parse(number);
                  if (n < 0) {
                    solution = '';
                    error = '(*) The number must be greater than zero';
                  } else {
                    solution = showSolution(n);
                    error = '';
                  }
                  setState(() {});
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
              Text(
                error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String showSolution(int n) => 'pyramid($n):\n\n${pyramid(n)}';
}
