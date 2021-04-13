import 'package:flutter/material.dart';
import 'uts.dart ';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink),
      home: Demo(),
    );
  }
}
