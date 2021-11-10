import 'package:flutter/material.dart';

class OpenOrder extends StatelessWidget {
  const OpenOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: const Center(
        child: Text('Open'),
      ),
    );
  }
}
