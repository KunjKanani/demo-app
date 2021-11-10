import 'package:demo_app/view/homepage/accepted_order/accepted_order.dart';

import 'package:demo_app/view/homepage/offered_order/offered_order.dart';
import 'package:demo_app/view/homepage/open_order/open_order.dart';
import 'package:demo_app/view/homepage/orders/orders.dart';
import 'package:demo_app/view/homepage/packed_order/packed_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              height: 105,
              decoration: const BoxDecoration(
                color: Color(0xFF22314D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  getAppBar(),
                  getTabBar(),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 137,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: getTabView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget getAppBar() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 35,
                width: 35,
              ),
              const SizedBox(width: 10),
              const Text(
                'Desi MedStore',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                CupertinoIcons.bell,
                color: Colors.white,
                size: 22,
              ),
              SizedBox(width: 20),
              Icon(
                CupertinoIcons.search,
                color: Colors.white,
                size: 22,
              ),
            ],
          ),
        ],
      ),
    );
  }

  getTabBar() {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      indicator: const UnderlineTabIndicator(
        insets: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
        borderSide: BorderSide(
          width: 2,
          color: Color(0xFFFFFFFF),
        ),
      ),
      tabs: const [
        Tab(
          child: Text(
            'Open (24)',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'Accepted (4)',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'Offered (10)',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'Orders (3)',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'Packed (7)',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  getTabView() {
    return TabBarView(
      controller: _tabController,
      children: const [
        OpenOrder(),
        AcceptedOrder(),
        OfferedOrder(),
        Orders(),
        Packed()
      ],
    );
  }
}
