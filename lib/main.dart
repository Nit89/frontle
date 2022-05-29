import 'package:flutter/material.dart';
import 'package:frontle/controller.dart';
import 'package:frontle/screens/frontlyne_content.dart';
import 'package:frontle/screens/screen1.dart';
import 'package:frontle/screens/test.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Controller())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FRONTLYNE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => TEST(),
      //   '/second': (context) => FrontleScreen(),
      // },
    );
  }
}