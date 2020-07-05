import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String>{
  Future<String> getDataFromServer() async{
    await Future.delayed(const Duration(seconds: 1));
    return "Fetched From Server";
  }
  @override
  Future<String> futureToRun() => getDataFromServer();

}