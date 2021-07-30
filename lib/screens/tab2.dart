import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> with AutomaticKeepAliveClientMixin<Tab2> {
  @override
  void initState() {
    super.initState();
    print('initState Tab2');
  }

  SizedBox getCircularBox2() {
    return SizedBox(
      height: 200.0,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: 150,
              height: 150,
              child: new CircularProgressIndicator(
                  strokeWidth: 20,
                  value: 0.6,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red)),
            ),
          ),
          Center(
              child: Text(
            "1:23:46",
            style: new TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }

  ToggleSwitch getSwitch() {
    return ToggleSwitch(
        minWidth: 90.0,
        cornerRadius: 20.0,
        activeBgColors: [
          [Colors.redAccent],
          [Colors.cyan]
        ],
        activeFgColor: Colors.white,
        inactiveBgColor: Colors.grey,
        inactiveFgColor: Colors.white,
        totalSwitches: 2,
        customIcons: [
          Icon(Icons.play_arrow, size: 30),
          Icon(Icons.pause, size: 30)
        ],
        onToggle: (index) {
          print('switched to: $index');
        });
  }

  @override
  Widget build(BuildContext context) {
    print('build Tab2');
    return Scaffold(
        appBar: AppBar(
          title: Text('Timer'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          getCircularBox2(),
          getSwitch(),
          Row(
            children: [
              new Checkbox(value: false, onChanged: (bool value) {}),
              Text("오늘은 미션이 없는 날"),
              Text("1:23:45:"),
              new Checkbox(value: false, onChanged: (bool value) {}),
            ],
          )
        ])));
  }

  @override
  bool get wantKeepAlive => true;
}
