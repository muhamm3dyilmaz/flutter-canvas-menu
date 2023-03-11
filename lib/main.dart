import 'package:canvas_menu/screens/desktop_scaffold.dart';
import 'package:canvas_menu/screens/mobile_scaffold.dart';
import 'package:canvas_menu/screens/responsive_layout.dart';
import 'package:canvas_menu/screens/tablet_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
              .copyWith(secondary: const Color.fromARGB(255, 101, 101, 101))),
      home: const ResponsiveLayout(
        desktopScaffold: CanvasMenuDesktop(),
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
      ),
    );
  }
}
