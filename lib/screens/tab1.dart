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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  child: Text(
                    "마공",
                    style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.only(top: 50, bottom: 120),
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text('Study',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold))),
                Padding(
                  child: FlatButton(
                      onPressed: () {},
                      child: Text('Relaxer',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text('Statistics',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold))),
              ]),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
