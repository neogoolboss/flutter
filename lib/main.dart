import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var switchValue = false;

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // 텍스트 연습
        // home: Container(
        //   color: Colors.white,
        //   child: Center(
        //     child: Text(
        //       'hello\nFlutter',
        //       textAlign: TextAlign.center,
        //       style: TextStyle(color: Colors.blue, fontSize: 20),
        //     ),
        //   ),
        // ),

        // 다크모드 스위치
        darkTheme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: Switch(
                value: switchValue,
                onChanged: (value) {
                  switchValue = value;
                }),
          ),
        ));
  }
}

// class MyHomePage {
// }
