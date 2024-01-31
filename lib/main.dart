//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'pages/home_page.dart';
//  PARTS
//  FREEZE
//  PROVIDERS
//  //  //

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freesed Data Class ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
