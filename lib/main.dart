import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    const MaterialApp(home: DesignBallPage()),
  );
}

class DesignBallPage extends StatelessWidget {
  const DesignBallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.indigo,
      ),
      body: const BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      child: Image.asset('images/ball$ballNum.png'),
      onPressed: () {
        setState(() {
          ballNum = Random().nextInt(5) + 1;
        });
      },
    ));
  }
}
