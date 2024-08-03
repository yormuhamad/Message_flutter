import 'package:flutter/material.dart';

class Chorkunja extends StatelessWidget {
  final String post;
  final Color rang;
  const Chorkunja({
    super.key,
    required this.post,
    required this.rang,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.center,
        height: 200,
        color: rang,
        child: Text(
          post,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}