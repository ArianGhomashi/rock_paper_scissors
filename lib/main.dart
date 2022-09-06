import 'package:flutter/material.dart';
import 'package:rock_paper_scisser/conatants/contants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: purpleBackgroundColor,
          elevation: 0,
          centerTitle: true,
          title: Text('Rock Paper Scissors'),
        ),
        backgroundColor: purpleBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _getTopRPS(_getRandomNumber())!,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: greenColor,
                    minimumSize: Size(0, 50),
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'ُُStart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            _getBottomRPS(_getRandomNumber())!,
          ],
        ),
      ),
    );
  }

  Widget? _getTopRPS(int number) {
    switch (number) {
      case 0:
        return Icon(
          FontAwesomeIcons.solidHandBackFist,
          color: Colors.red,
          size: 90,
        );
      case 1:
        return Icon(
          FontAwesomeIcons.solidHand,
          color: Colors.red,
          size: 90,
        );
      case 2:
        return Icon(
          FontAwesomeIcons.solidHandScissors,
          color: Colors.red,
          size: 90,
        );
    }
  }

  Widget? _getBottomRPS(int number) {
    switch (number) {
      case 0:
        return Icon(
          FontAwesomeIcons.solidHandBackFist,
          color: Colors.yellow,
          size: 90,
        );
      case 1:
        return Icon(
          FontAwesomeIcons.solidHand,
          color: Colors.yellow,
          size: 90,
        );
      case 2:
        return Icon(
          FontAwesomeIcons.solidHandScissors,
          color: Colors.yellow,
          size: 90,
        );
    }
  }

  int _getRandomNumber() {
    Random random = new Random();
    int randomNumber = random.nextInt(3);
    return randomNumber;
  }
}
