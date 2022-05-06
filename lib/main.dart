import 'package:flutter/material.dart';

import 'app_info.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Appinfo.appname,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
