import 'package:demo_app/view/homepage/offered_order/assign_to.dart';
import 'package:demo_app/view/homepage/offered_order/paper_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferedOrder extends StatelessWidget {
  const OfferedOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                ),
              ],
              color: Colors.white,
            ),
            height: 580,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getCustomerName(),
                const SizedBox(height: 10),
                getTags(),
                const SizedBox(height: 20),
                const AssignTo(),
                const SizedBox(height: 5),
                const PaperView(),
                const SizedBox(height: 10),
                getDetailBtn()
              ],
            ),
          );
        },
      ),
    );
  }

  Row getDetailBtn() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  10,
                ),
              ),
              border: Border.all(
                color: Colors.grey.shade400,
              ),
              color: Colors.grey[200],
            ),
            margin: const EdgeInsets.only(right: 10),
            child: const Center(
              child: Text(
                'MRP: 450',
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  10,
                ),
              ),
              border: Border.all(
                color: Colors.grey.shade400,
              ),
              color: Colors.grey[200],
            ),
            margin: const EdgeInsets.only(right: 10),
            child: const Center(
              child: Text(
                'Your Price: 390',
              ),
            ),
          ),
        ),
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

  Text getCustomerName() {
    return const Text(
      "Customer Name",
      style: TextStyle(
        color: Color(0xFF22314D),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
