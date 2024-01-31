//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:riverpod_freeze/models/collections.dart';
//  Import FILES
//  PARTS
//  FREEZE
//  PROVIDERS
//  //  //

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final immutableColl = ImmutableColl([]);
    // immutableColl.list.add(42);
    // print(immutableColl);

    final mutableColl = MutableColl([]);
    mutableColl.list.add(42);
    print(mutableColl);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Collection Page'),
      ),
      // body: ,
    );
  }
}
