import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            controller.animateToPage(
              0,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
            );
          },
          child: Text("Intro".toUpperCase()),
        ),
        TextButton(
          onPressed: () {
            controller.animateToPage(
              1,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
            );
          },
          child: Text("About".toUpperCase()),
        ),
        TextButton(
          onPressed: () {
            controller.animateToPage(
              1,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
            );
          },
          child: Text("Education".toUpperCase()),
        ),
        TextButton(
          onPressed: () {},
          child: Text("Work Experience".toUpperCase()),
        ),
        TextButton(
          onPressed: () {},
          child: Text("Projects".toUpperCase()),
        ),
        TextButton(
          onPressed: () {},
          child: Text("Contact".toUpperCase()),
        ),
      ],
    );
  }
}
