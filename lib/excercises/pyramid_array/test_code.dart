import 'package:flutter/material.dart';

class TestCode extends StatefulWidget {
  @override
  _TestCodeState createState() => _TestCodeState();
}

class _TestCodeState extends State<TestCode> {
  String solution = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Code'),
      ),
      body: Padding(
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
                  print('Show error message');
                } else {
                  setState(() {
                    solution = showSolution(n);
                  });
                }
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
    );
  }

  String showSolution(int n) {
    return 'pyramid($n) => ${pyramid(n)}';
  }

  List<List<int>> pyramid(int n) {
    return List.generate(n, (i) => List.filled(i + 1, 1));
  }
}
