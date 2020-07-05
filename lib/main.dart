import 'package:flutter/material.dart';
import 'package:my_app/app/locator.dart';
import 'package:my_app/app/router.gr.dart';
import 'package:my_app/ui/views/future_example/future_view.dart';
import 'package:my_app/ui/views/partial_builds/partial_builds_view.dart';
import 'package:my_app/ui/views/reactive_example/reactive_example.dart';
import 'package:stacked_services/stacked_services.dart';
import './ui/views/home/home_view.dart';
void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("Main ");
    return MaterialApp(
      title: "Flutter Demo",
      //initialRoute: Routes.startupViewRoute,
      home: FutureView(),
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      );
  }
}
