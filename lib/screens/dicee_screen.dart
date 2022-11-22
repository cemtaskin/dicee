import 'dart:math';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class DiceeScreen extends StatefulWidget {
  const DiceeScreen({super.key});

  @override
  State<DiceeScreen> createState() => _DiceeScreenState();
}

class _DiceeScreenState extends State<DiceeScreen> {
  String first = '';
  String second = '5';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    randomize();
  }

  void randomize() {
    Random rng = Random();

    first = (rng.nextInt(5) + 1).toString();
    second = (rng.nextInt(5) + 1).toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.red,
          appBarTheme: AppBarTheme(
            color: Colors.red,
          )),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            title: Text('Dicee'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          randomize();
                        });
                      },
                      child: Image.asset(
                        'assets/images/dice${first}.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          randomize();
                        });
                      },
                      child: Image.asset(
                        'assets/images/dice${second}.png',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
