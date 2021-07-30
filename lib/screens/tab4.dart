import 'package:flutter/material.dart';

class Tab4 extends StatefulWidget {
  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> with AutomaticKeepAliveClientMixin<Tab4> {
  @override
  void initState() {
    super.initState();
    print('initState Tab4');
  }

  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 7, minute: 15),
      initialEntryMode: TimePickerEntryMode.input,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build Tab3');
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: _selectTime,
            child: Text('마감 시간',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
