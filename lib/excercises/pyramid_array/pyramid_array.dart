import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/utils/styles.dart';
import 'package:flutter_codewars_practices/common/widgets/test_button.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/pyramid_impl.dart';
import 'package:flutter_codewars_practices/common/widgets/best_answer.dart';
import 'package:flutter_codewars_practices/excercises/pyramid_array/widgets/description.dart';

class PyramidArray extends StatelessWidget {
  const PyramidArray();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pyramid Array'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PyramidDescription(),
            BestAnswer(
              code: <TextSpan>[
                Styles.blue('List'),
                Styles.white('<'),
                Styles.blue('List'),
                Styles.white('<int>> pyramid(int n) {\n'),
                Styles.purple('\t\t return '),
                Styles.blue('List'),
                Styles.white('.generate(n, (i) => '),
                Styles.blue('List'),
                Styles.white('.filled(i + '),
                Styles.orange('1'),
                Styles.white(','),
                Styles.orange('1'),
                Styles.white('));'),
                Styles.white('\n}'),
              ],
            ),
            TestButton(page: PyramidImpl()),
          ],
        ),
      ),
    );
  }
}
