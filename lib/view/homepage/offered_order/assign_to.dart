import 'package:flutter/material.dart';

class AssignTo extends StatefulWidget {
  const AssignTo({Key? key}) : super(key: key);

  @override
  _AssignToState createState() => _AssignToState();
}

class _AssignToState extends State<AssignTo> {
  String dropdownValue = 'Select Person';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        color: Colors.grey[200],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Assign To:", style: TextStyle(fontSize: 14)),
          DropdownButton<String>(
            underline: Container(),
            value: dropdownValue,
            items: <String>['Select Person', 'Hello', 'From', 'Kunj', 'Kanani']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(
                    color: Color(0xFF22314D),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
            onChanged: (newVal) {
              setState(() {
                dropdownValue = newVal!;
              });
            },
          ),
        ],
      ),
    );
  }
}
