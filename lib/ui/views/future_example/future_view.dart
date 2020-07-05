import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_app/ui/views/future_example/future_viewmodel.dart';
import 'package:my_app/ui/views/partial_builds/partial_builds_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
class FutureView extends StatelessWidget {
  const FutureView({Key key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive
      (builder: (context,model,child){
        print("PartialBuildsView");
        return Scaffold(
          body: Center(
            child: model.isBusy ?
                CircularProgressIndicator() :
                Text("${model.data}")
            ,
          )
        );
    },
        viewModelBuilder: () => FutureExampleViewModel());
  }
}

