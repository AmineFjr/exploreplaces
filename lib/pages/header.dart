import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Explore", style: TextStyle(fontSize: 20)),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Places",
              style: TextStyle(
                  fontSize: 48,
                  color: Color(0xFF9E00FF),
                  fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
