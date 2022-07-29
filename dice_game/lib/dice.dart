
import 'package:flutter/material.dart';
import 'dart:math';



class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1;
  int right = 1;
  Random random =  Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dice App'),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(child: dice(context)),
      ),
    );
  }

  Widget dice(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      changeDice();
                    });
                  },
                  child: Image.asset('images/dice$left.png'))),
          const SizedBox(
            width: 2,
          ),
          Expanded(
              flex: 1,
              child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      changeDice();
                    });
                  },
                  child: Image.asset('images/dice$right.png'))),
        ],
      ),
    );
  }

  void changeDice() {
    left = 1 + random.nextInt(6 - 1);
    right = 1 + random.nextInt(6 - 1);
  }
}
