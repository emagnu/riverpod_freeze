//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/method.dart';
//  PARTS
//  FREEZE

//  //  //

class MethodPage extends StatelessWidget {
  const MethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    const method1 = Method('method1');
    method1.printMethod();
    const method2 = Method('method2', version: 1.5);
    method2.printMethod();
    const method3 = Method('method3', version: 2);
    method3.printMethod();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Method Page'),
        ),
        body: const Center(
          child: Text('Method Page'),
        ));
  }
}
