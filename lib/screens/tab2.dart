import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class Todo {
  String text;
  String time;
  bool isFinished;

  Todo({this.text, this.time, this.isFinished});

  static List<Todo> getUsers() {
    return <Todo>[
      Todo(text: "미션1", time: "1:23:45", isFinished: false),
      Todo(text: "checkout", time: "1:23:45", isFinished: false),
      Todo(text: "Aaryan", time: "1:23:45", isFinished: false),
      Todo(text: "플러터 싫어", time: "1:23:45", isFinished: false),
      Todo(text: "Aaryan", time: "1:23:45", isFinished: false),
    ];
  }
}

class _Tab2State extends State<Tab2> with AutomaticKeepAliveClientMixin<Tab2> {
  List<Todo> todos;
  List<Todo> selectedTodos;
  bool sort;

  @override
  void initState() {
    sort = false;
    selectedTodos = [];
    todos = Todo.getUsers();
    super.initState();
  }

  void onSelectedRow(bool selected, Todo todo) async {
    setState(() {
      if (selected) {
        selectedTodos.add(todo);
      } else {
        selectedTodos.remove(todo);
      }
    });
  }

  DataTable dataBody() {
    return DataTable(
      columns: [
        // DataColumn(
        //   label: Text("select"),
        //   numeric: false,
        //   tooltip: "select",
        // ),
        DataColumn(
          label: Text("task name"),
          numeric: false,
          tooltip: "task name",
        ),
        DataColumn(
          label: Text("task time"),
          numeric: false,
          tooltip: "task time",
        ),
        DataColumn(
          label: Text("finished"),
          numeric: false,
          tooltip: "finished",
        ),
      ],
      rows: todos
          .map(
            (todo) => DataRow(
                selected: selectedTodos.contains(todo),
                onSelectChanged: (b) {
                  print("Onselect");
                  onSelectedRow(b, todo);
                },
                cells: [
                  DataCell(
                    Text(todo.text),
                    onTap: () {
                      // print('Selected ${todo.text}');
                    },
                  ),
                  DataCell(
                    Text(todo.time),
                  ),
                  DataCell(
                    new Checkbox(value: false, onChanged: (bool value) {}),
                    onTap: () {
                      // print('Selected ${todo.text}');
                    },
                  ),
                ]),
          )
          .toList(),
    );
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
          dataBody(),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          )
          FlatButton(
                    onPressed: () {},
                    child: Text('Statistics',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold))),
        ])));
  }

  @override
  bool get wantKeepAlive => true;
}
