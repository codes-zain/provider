import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'startup_viewmodel.dart';
class StartupView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
        builder: (context,model,child) =>
            Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: (){
                  model.goToHomePage();
                },
                child: Icon(Icons.add),
              ),
              body: Center(child: Text("Startup")),
            )
        , viewModelBuilder: ()=> StartupViewModel(),
    );
  }
}
