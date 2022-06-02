import 'package:flutter/material.dart';
import 'package:frontle/controller.dart';
import 'package:frontle/screens/Reward_card.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

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
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FRONTLYNE',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Reward(),
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => TEST(),
        //   '/second': (context) => FrontleScreen(),
        // },
      );
    });
  }
}
