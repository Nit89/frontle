import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:frontle/controller.dart';
import 'package:frontle/screens/frontlyne_content.dart';
import 'package:frontle/screens/rightresult.dart';
import 'package:frontle/screens/screen1.dart';
import 'package:frontle/screens/test.dart';
import 'package:frontle/screens/wrongresult.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => Controller())],
        child: const MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
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
    });
  }
}
