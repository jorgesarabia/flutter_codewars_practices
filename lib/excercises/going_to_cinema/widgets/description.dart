import 'package:flutter/material.dart';
import 'package:flutter_codewars_practices/common/widgets/example_section.dart';

class GoingCinemaDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'My friend John likes to go to the cinema. He can choose between system A and system B.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.0),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'System A : he buys a ticket (15 dollars) every time',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'System B : he buys a card (500 dollars) and a first ticket for 0.90 times the ticket price, ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'then for each additional ticket he pays 0.90 times the price paid for the previous ticket.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ExampleSection(
            label: '#Example: If John goes to the cinema 3 times:',
            textSize: 14.0,
            exampleItems: [
              'System A : 15 * 3 = 45',
              'System B : 500 + 15 * 0.90 + (15 * 0.90) * 0.90 + (15 * 0.90 * 0.90) * 0.90 ( = 536.5849999999999, no rounding for each ticket)',
            ],
          ),
          Text(
            'John wants to know how many times he must go to the cinema so that the final result of System B, when rounded up to the next dollar, will be cheaper than System A.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.0),
          RichText(
            text: TextSpan(
              text: 'The function ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'movie ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(text: 'has 3 parameters: '),
                TextSpan(
                  text: 'card',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(text: '(price of the card), '),
                TextSpan(
                  text: 'ticket',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(text: '(normal price of a ticket), '),
                TextSpan(
                  text: 'perc',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(text: '(fraction of what he paid for the previous ticket) and returns the first '),
                TextSpan(
                  text: 'n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(text: ' such that'),
              ],
            ),
          ),
          SizedBox(height: 20.0),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ceil(price of System B) < price of System A.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ExampleSection(
            label: 'More Examples:',
            textSize: 14.0,
            exampleItems: [
              'movie(500, 15, 0.9) should return 43 (with card the total price is 634, with tickets 645)',
              'movie(100, 10, 0.95) should return 24 (with card the total price is 235, with tickets 240)',
            ],
          ),
        ],
      ),
    );
  }
}
