import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  // Do not add a build method, add a createState method
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// private class
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/disneyportada.png';
  var currentDiceRoll = 3;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(8) + 1; // Value between 1 and 6
    });
    // print('Changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/disney-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        TextButton(
          // onPressed: () {}),
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20,),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: '¿Qué personaje de Disney eres? ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
