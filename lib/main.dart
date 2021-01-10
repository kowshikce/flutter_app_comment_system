import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_comment_system/screens/ReplayScreen.dart';
import 'package:provider/provider.dart';
import './provider/MockDataProvider.dart';
import './screens/CommentScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MockDataProvider())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        routes: {
          CommentScreen.routeName: (context) => CommentScreen(),
          ReplayScreen.routeName: (context) => ReplayScreen()
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitch = false;

  void makeTransition() {
    setState(() {
      isSwitch = !isSwitch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CommentScreen();
  }
}
