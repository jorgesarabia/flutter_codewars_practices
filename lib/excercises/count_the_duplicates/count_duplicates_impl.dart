import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/excercises/count_the_duplicates/solutions/my_answer.dart';

class CountDuplicatesImpl extends StatefulWidget {
  @override
  _CountDuplicatesImplState createState() => _CountDuplicatesImplState();
}

class _CountDuplicatesImplState extends State<CountDuplicatesImpl> {
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a number',
                ),
                onChanged: (String text) {
                  setState(() {
                    solution = showSolution(text);
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

  String showSolution(String text) => "'$text' => ${duplicateCount(text)}";
}
