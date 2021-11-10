import 'package:flutter/material.dart';

class AcceptedOrder extends StatelessWidget {
  const AcceptedOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: const Center(
        child: Text('Accepted'),
      ),
    );
  }
}
