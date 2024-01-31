//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:riverpod_freeze/models/person.dart';
//  Import FILES
//  PARTS
//  FREEZE
//  PROVIDERSj
//  //  //

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    final Person person1 = Person(id: 1, name: 'John', email: 'john@gmail.com');
    debugPrint('person1: $person1');
    debugPrint('person1: ${person1.id}');
    debugPrint('person1: ${person1.name}');
    debugPrint('person1: ${person1.email}');
    // ignore: prefer_const_constructors
    final Person person2 = Person(id: 1, name: 'John', email: 'john@gmail.com');
    debugPrint('person2: $person1');
    print(person1 == person2);
    debugPrint('$person1 == $person2');
    // ignore: prefer_const_constructors
    final Person person3 = person1.copyWith(id: 2, email: 'johndoe@gmail.com');
    debugPrint('person3: $person3');
    print(person1 == person3);
    debugPrint('$person1 == $person3');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Person Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Person Page',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Back',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
