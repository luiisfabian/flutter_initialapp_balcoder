import 'package:flutter/material.dart';
import 'package:flutter_initialapp_balcoder/utils/widget/custom_container.dart';

class HomePage extends StatefulWidget {
  HomePage({this.name});

  final String name;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int count = 0;
  int _tabIndex;

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabIndex = 0;
    _tabController =
        new TabController(length: 2, vsync: this, initialIndex: _tabIndex);
  }

  incrementsCount() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            icon: Icon(Icons.message),
          ),
          Tab(
            icon: Icon(Icons.mode_comment),
          ),
        ]),
      ),
      body: Center(
          child: TabBarView(
        controller: _tabController,
        children: [
          CustomContainer(
            title: "Precionando 1",
            count: count,
          ),
          CustomContainer(
            title: "Precionando 2",
            count: count,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            incrementsCount();
          });
        },
        child: Icon(Icons.person_pin),
      ),
    );
  }
  
}
