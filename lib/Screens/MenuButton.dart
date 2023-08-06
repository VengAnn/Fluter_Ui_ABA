import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final double size;
  final IconData icon;
  const MenuButton(
      {required this.text, required this.size, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 69, 73, 152),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: size,
          ),
          Text(text),
        ],
      ),
    );
  }
}
