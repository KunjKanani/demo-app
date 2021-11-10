import 'package:flutter/material.dart';

class Packed extends StatelessWidget {
  const Packed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: const Center(
        child: Text('Packed'),
      ),
    );
  }
}
