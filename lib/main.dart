import 'package:flutter/material.dart';
import 'package:soccer_app/pages/GridViewPage.dart';
import 'package:soccer_app/pages/ListViewPages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: ListViewPage());
  }
}
