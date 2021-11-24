// ignore_for_file: must_be_immutable

import 'package:dyanmic_themeing/t.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ob.addListener(() {
      setState(() {});
    });
    return MaterialApp(
      title: "Dynamic Theming",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ob.checktheme(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool dark = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              trailing: Switch(
                  value: dark,
                  onChanged: (value) {
                    dark = value;
                    ob.swicththeme();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
