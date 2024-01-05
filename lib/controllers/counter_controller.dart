import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt count=0.obs;
  /*increament start here*/
  increment(){
    count.value++;
  }
/*increament end here*/
  /*decrement start here*/
  decrement(){
    count.value--;
  }
/*decrement end here*/
}