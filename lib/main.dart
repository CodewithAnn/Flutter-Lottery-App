import 'package:flutter/material.dart';

void main() {
  runApp(
    LotteryApp(),
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
  int luckyNumber = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: const Text(
            "Lottery App",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("You're Lucky number is $luckyNumber ")],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.restart_alt_sharp),
        ),
      ),
    );
  }
}
