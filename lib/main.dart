import 'package:flutter/material.dart';
import 'package:hacktoberfest_galle_chapter_demo/pages/home.dart';
import 'package:hacktoberfest_galle_chapter_demo/provider/home.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ProductSans',
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepOrangeAccent,
      ),
      home: ChangeNotifierProvider<HomeModel>(
        builder: (_) => HomeModel(),
        child: HomePage(),
      ),
    );
  }
}
