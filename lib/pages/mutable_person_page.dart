//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/mutable_person.dart';
//  PARTS
//  FREEZE
//  PROVIDERS
//  //  //

class MutablePersonPage extends StatelessWidget {
  const MutablePersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    final person1 = MutablePerson(id: 1, name: 'John', email: 'john@gmail.com');
    debugPrint('person1: $person1');
    // person1.id = 2;
    person1.name = 'John';
    person1.email = 'john@gmail.com';
    debugPrint('person1: $person1');
    // ignore: prefer_const_constructors
    final person2 = MutablePerson(id: 1, name: 'John', email: 'john@gmail.com');
    print(person1 == person2);
    final person3 = person1.copyWith(name: 'Jane');
    debugPrint('Person3: $person3');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mutable Person Page'),
      ),
    );
  }
}


//