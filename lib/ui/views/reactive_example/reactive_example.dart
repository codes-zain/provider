import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_app/ui/smart_widgets/double_increase_counter/double_increase_counter.dart';
import 'package:my_app/ui/smart_widgets/single_increase_counter/single_increase_counter.dart';
import 'package:my_app/ui/views/partial_builds/partial_builds_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({Key key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            SingleIncreaseCounter(),
            SizedBox(width:50),
            DoubleIncreaseCounter(),
          ],
        ),
      ),
    ) ;
  }
}
