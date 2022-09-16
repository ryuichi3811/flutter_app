import 'package:flutter/material.dart';
// import 'package:flutter_app/sample/Grid/grid_view.dart';
import 'package:flutter_app/sample/Sliver/sliver_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const GridViewSample(),
      home: const SliverAppBarSample(),
    );
  }
}
