import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context,model,child) =>
            Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: (){
                  model.updateCounter();
                },
                child: Icon(Icons.add),
              ),
              body: Center(child: Text(model.title)),
            )
        , viewModelBuilder: ()=> HomeViewModel(),
    );
  }
}
