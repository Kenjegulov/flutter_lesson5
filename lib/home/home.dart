import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int firstPlayerFirstDice = 1;
  int firstPlayerSecondDice = 1;
  int secondPlayerFirstDice = 1;
  int secondPlayerSecondDice = 1;
  void playerFirst() {
    setState(() {
      firstPlayerFirstDice = Random().nextInt(6) + 1;
      firstPlayerSecondDice = Random().nextInt(6) + 1;
    });
  }

  void playerSecond() {
    setState(() {
      secondPlayerFirstDice = Random().nextInt(6) + 1;
      secondPlayerSecondDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          "Тапшырма 5",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (firstPlayerFirstDice + firstPlayerSecondDice >
              secondPlayerFirstDice + secondPlayerSecondDice)
            Container(
              child: const Text(
                "First player WINS",
                style: TextStyle(fontSize: 50, color: Colors.green),
              ),
            ),
          if (firstPlayerFirstDice + firstPlayerSecondDice <
              secondPlayerFirstDice + secondPlayerSecondDice)
            Container(
              child: const Text("Second player WINS",
                  style: TextStyle(fontSize: 50, color: Colors.green)),
            ),
          if (firstPlayerFirstDice + firstPlayerSecondDice ==
              secondPlayerFirstDice + secondPlayerSecondDice)
            Container(
              child: const Text("DRAW",
                  style: TextStyle(fontSize: 50, color: Colors.green)),
            ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    // onTap: () {
                    //   playerFirst();
                    // },
                    child: Image.asset(
                      "images/dice$firstPlayerFirstDice.png",
                      color: Colors.blue,
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "[${firstPlayerFirstDice + firstPlayerSecondDice}]",
                    style: const TextStyle(fontSize: 30, color: Colors.blue),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    // onTap: () {
                    //   playerFirst();
                    // },
                    child: Image.asset(
                      "images/dice$firstPlayerSecondDice.png",
                      color: Colors.blue,
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    // onTap: () {
                    //   playerSecond();
                    // },
                    child: Image.asset(
                      "images/dice$secondPlayerFirstDice.png",
                      color: Colors.red,
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "[${secondPlayerFirstDice + secondPlayerSecondDice}]",
                    style: const TextStyle(fontSize: 30, color: Colors.red),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    // onTap: () {
                    //   playerSecond();
                    // },
                    child: Image.asset(
                      "images/dice$secondPlayerSecondDice.png",
                      color: Colors.red,
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    playerFirst();
                  },
                  child: Container(
                    child: const Text(
                      "First player",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  width: 300,
                ),
                ElevatedButton(
                  onPressed: () {
                    playerSecond();
                  },
                  child: Container(
                    child: const Text(
                      "Second player",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
