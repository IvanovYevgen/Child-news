import 'package:child_news/screens/NewsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Child News',
      home: NewsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
