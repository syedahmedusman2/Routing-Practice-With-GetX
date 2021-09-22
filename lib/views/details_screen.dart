import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxrouting/controller/main_controller.dart';

class DetailScreen extends StatelessWidget {
  // const DetailScreen({Key? key}) : super(key: key);
  MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
       var data = Get.arguments;
    print(data);
    return Scaffold(

      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details of food"),
      ),
      body:Column(
        children: [
          ElevatedButton(onPressed: (){
           controller.shoesnack();
          }, child: Text("Show Error Dialog")),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
           controller.showBottom();
          }, child: Text("Show Error Dialog")),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
           controller.showerror();
          }, child: Text("Show Error Dialog")),
          SizedBox(
            height: 10,
          )

        ],
      )
    );
  }
}
