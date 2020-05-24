import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Screens/taskScreen.dart';
import 'provider/taskData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: TextTheme(
            bodyText1: TextStyle(fontFamily: "pacifico"),
            bodyText2: TextStyle(fontFamily: "pacifico"),
          ),
        ),
        home: TaskScreen(),
      ),
    );
  }
}
