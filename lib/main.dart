import 'package:flutter/material.dart';
import 'package:my_book_log/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyBookLog',
      home: HomePage(),
    );
  }
}
