import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        );
    // return const Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrmfPVCryBUb3eN06EpdCGNUEUGn3Jv_GhCvLknnR3yg&s')),
    //     Text('Hola Tonotos', style: TextStyle(color: Colors.white, fontSize: 28),),
    //   ],
    // );
  }
}