//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  PARTS
//  FREEZE
//  PROVIDERS
//  //  //

class CustomButton extends StatelessWidget {
  final String title;
  final Widget child;

  const CustomButton({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: FilledButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => child),
              );
            },
            child: Text(
              title,
              style: const TextStyle(fontSize: 18),
            )));
  }
}
