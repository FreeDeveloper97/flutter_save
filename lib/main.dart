import 'package:flutter/material.dart';
import 'package:tabbar_demo/tab_containter_default.dart';

import 'tab_containter_default.dart';

void main() => runApp(MyApp());

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);

const int _blackPrimaryValue = 0xFF000000;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: TabContainerDefault(),
//      TabContainerBottom(),
//      TabContainerLoad1Time(),
//      TabContainerIndexedStack(),
//      TabContainer(),
    );
  }
}
