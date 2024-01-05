
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter GetX counter Example',style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),),
      ),
    bottomNavigationBar: Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
   child: Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Container(
         height: 50,
           decoration: BoxDecoration(
             color: Colors.blue,
             shape: BoxShape.circle,
           ),

           child: Center(child: IconButton(onPressed: (){
             counterController.increment();
             print(counterController.count);
           }, icon: Icon(Icons.add),),),),
      const SizedBox(width: 20,),
       Obx(() => Text(counterController.count.string),),
       const SizedBox(width: 20,),
       Container(
         height: 50,
         decoration: BoxDecoration(
           color: Colors.blue,
           shape: BoxShape.circle,
         ),

         child: Center(child: IconButton(onPressed: (){
           print(counterController.count);counterController.decrement();
         }, icon: Icon(Icons.remove),),),),
     ],
   ),
    ),
    );
  }
}
