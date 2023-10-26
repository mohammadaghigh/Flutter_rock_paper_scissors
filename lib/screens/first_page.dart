import 'dart:math';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int top = 1;
  int bottom = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Image(
                image: AssetImage('assets/images/$top.png'),
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                minimumSize: Size(300.0, 40.0),
              ),
              onPressed: () {
                setState(() {
                  top = Random().nextInt(3) + 1;
                  bottom = Random().nextInt(3) + 1;
                });
              },
              child: Text(
                'شروع بازی',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Image(
                image: AssetImage('assets/images/$bottom.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
