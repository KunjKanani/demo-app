import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerDetails extends StatefulWidget {
  const CustomerDetails({Key? key}) : super(key: key);

  @override
  _CustomerDetailsState createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  String dropdownValue = 'Select Person';
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getCustomerName(),
        const SizedBox(height: 10),
        getTags(),
        const SizedBox(height: 20),
        isShow ? selectPersonWidget() : Container(),
      ],
    );
  }

  Container selectPersonWidget() {
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
                    fontWeight: FontWeight.bold,
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

  Widget getCustomerName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Customer Name",
          style: TextStyle(
            color: Color(0xFF22314D),
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        !isShow
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isShow = !isShow;
                  });
                },
                child: const Icon(
                  CupertinoIcons.person_add,
                  color: Color(0xFFC98C66),
                ),
              )
            : Container(),
      ],
    );
  }

  Row getTags() {
    return Row(
      children: [
        Container(
          height: 30,
          decoration: const BoxDecoration(
            color: Color(0xFFEBEBED),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Vector.png", height: 17, width: 17),
              const SizedBox(width: 5),
              const Text(
                "2.5 kms",
                style: TextStyle(
                  color: Color(0xFF22314D),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 30,
          decoration: const BoxDecoration(
            color: Color(0xFFEBEBED),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Vector.png", height: 17, width: 17),
              const SizedBox(width: 5),
              const Text(
                "14 Quotation given",
                style: TextStyle(
                  color: Color(0xFF22314D),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
