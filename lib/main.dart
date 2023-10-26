import 'package:flutter/material.dart';
import 'package:flutter_rock_paper_scissors/screens/first_page.dart';
import 'package:flutter_rock_paper_scissors/widgets/appbar_widget.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vb'),
      home: Scaffold(
        backgroundColor: Colors.red[700],
        appBar: getAppBar(),
        body: FirstPage(),
      ),
    );
  }
}
