import 'package:get/get.dart';

import '../Model/counter_model.dart';

class CounterController extends GetxController{
  counterModel countermodel = counterModel(Count: 0.obs);

  void increament(){
    countermodel.Count++;
}

  void decreament(){
    countermodel.Count--;
  }
}