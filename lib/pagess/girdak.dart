
import 'package:flutter/material.dart';


class Girdak extends StatelessWidget {
  final String istoriya;
  const Girdak({super.key, required this.istoriya});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: Text(istoriya),
      ),
    );
  }
}