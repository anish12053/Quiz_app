import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.changeScreen, {super.key});

  final Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Image(
              width: 300,
              image: AssetImage('assets/images/IMG_3529.jpg'),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "Let's see how much you Know Anish",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: changeScreen,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.arrow_right_alt_outlined),
              Text(
                'Start Quiz',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
