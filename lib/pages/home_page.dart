//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../widgets/custom_button.dart';
import 'person_page.dart';
//  PARTS
//  FREEZE
//  PROVIDERS
//  //  //

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          shrinkWrap: true,
          children: const <Widget>[
            Text(
              'Home Page',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(height: 20.0),

            CustomButton(
              title: 'Persons',
              // route: '/persons',
              child: PersonPage(),
            ),
            // CustomButton(
            //   title: 'Counter',
            //   route: '/counter',
            //   child: CounterPage(),
            // ),
          ],
        ),
      ),
    );
  }
}
