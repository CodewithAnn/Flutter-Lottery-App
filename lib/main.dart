import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    const LotteryApp(),
  );
}

class LotteryApp extends StatelessWidget {
  const LotteryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LotteryHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LotteryHomePage extends StatefulWidget {
  const LotteryHomePage({super.key});

  @override
  State<LotteryHomePage> createState() => _LotteryHomePageState();
}

class _LotteryHomePageState extends State<LotteryHomePage> {
  var random = Random();
  int luckyNumber = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff373535),
        appBar: AppBar(
          elevation: 0.8,
          backgroundColor: const Color(0xff373535),
          title: const Text(
            "Lottery App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You're Lucky number is $luckyNumber ",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(180, 178, 133, 117),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          color: Color.fromARGB(255, 240, 34, 19),
                          size: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Better luck next time your number is $luckyNumber \n try again ",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(126, 166, 185, 1),
          onPressed: () {
            luckyNumber = random.nextInt(100);
            print(luckyNumber);
          },
          child: SvgPicture.asset(
            'icons/lottery_wheel.svg',
            // alignment: Alignment.topLeft,
            height: 45,
            width: 45,
          ),
        ),
      ),
    );
  }
}
