import 'package:flutter/material.dart';

import 'screens/tab1.dart';
import 'screens/tab2.dart';
import 'screens/tab3.dart';
import 'screens/tab4.dart';

class TabContainerDefault extends StatefulWidget {
  TabContainerDefault({Key key}) : super(key: key);

  @override
  _TabContainerDefaultState createState() => _TabContainerDefaultState();
}

class _TabContainerDefaultState extends State<TabContainerDefault> {
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Tab1(),
      Tab2(),
      Tab3(),
      Tab4(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
              physics: NeverScrollableScrollPhysics(), children: listScreens),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                text: 'Home',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Timer',
                icon: Icon(Icons.access_time),
              ),
              Tab(
                text: 'Statistics',
                icon: Icon(Icons.calendar_today),
              ),
              Tab(
                text: 'Settings',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
