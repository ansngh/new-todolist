import 'package:flutter/material.dart';
import 'package:newtodo/add_upadatetodo.dart';

import 'app_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Appinfo.appname,
        ),
      ),
      body: CircularProgressIndicator(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddUpadateTodo(true)),
          );
        },
      ),
    );
  }
}
