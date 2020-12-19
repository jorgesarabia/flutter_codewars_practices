import 'package:flutter/material.dart';

class ImplementationPage extends StatefulWidget {
  const ImplementationPage({
    this.inputType,
    this.inputLabel = 'Enter a String',
    @required this.solution,
  });

  final TextInputType inputType;
  final String inputLabel;
  final String Function(String) solution;

  @override
  _ImplementationPageState createState() => _ImplementationPageState();
}

class _ImplementationPageState extends State<ImplementationPage> {
  String solution = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implementation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                keyboardType: widget.inputType,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: widget.inputLabel,
                ),
                onChanged: (String text) {
                  setState(() {
                    solution = widget.solution(text);
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
}
