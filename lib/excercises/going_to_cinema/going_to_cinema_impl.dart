import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/excercises/going_to_cinema/solutons/my_answer.dart';

class GoingToCinemaImpl extends StatefulWidget {
  const GoingToCinemaImpl();

  @override
  _GoingToCinemaImplState createState() => _GoingToCinemaImplState();
}

class _GoingToCinemaImplState extends State<GoingToCinemaImpl> {
  String solution = '';
  final _formKey = GlobalKey<FormState>();

  final _percController = TextEditingController();
  final _ticketController = TextEditingController();
  final _cardController = TextEditingController();

  final _cardFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Going to cinema'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    formField('Card', _cardController, focusNode: _cardFocusNode),
                    SizedBox(height: 8.0),
                    formField('Ticket', _ticketController),
                    SizedBox(height: 8.0),
                    formField('Perc', _percController),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: [
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                FocusScope.of(context).unfocus();
                                setState(() {
                                  solution = showSolution(
                                    int.parse(_cardController.text),
                                    int.parse(_ticketController.text),
                                    double.parse(_percController.text),
                                  );
                                });
                              }
                            },
                            child: Text('Calculate'),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                            onPressed: () {
                              _percController.clear();
                              _ticketController.clear();
                              _cardController.clear();
                              _cardFocusNode.requestFocus();

                              setState(() {
                                solution = '';
                              });
                            },
                            child: Text('Clear'),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
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

  String showSolution(int card, int ticket, double perc) {
    return 'movie($card, $ticket, $perc) => ${movie(card, ticket, perc)}';
  }

  String validate(String value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  TextFormField formField(
    String label,
    TextEditingController controller, {
    FocusNode focusNode,
  }) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      validator: validate,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
