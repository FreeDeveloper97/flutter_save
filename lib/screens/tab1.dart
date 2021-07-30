import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> with AutomaticKeepAliveClientMixin<Tab1> {
  @override
  void initState() {
    super.initState();
    print('쓸모없는 홈 화면 출력');
  }

  @override
  Widget build(BuildContext context) {
    print('build Tab1');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          '홈화면',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
