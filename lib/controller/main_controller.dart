import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxrouting/views/home_screen.dart';

class MainController extends GetxController{
    hideLoading(){
      Get.back();
    }

  userLogin(){
    print("Login");
    showLoading();

    Future.delayed(Duration(microseconds: 3000), (){
      hideLoading();
      Get.off(HomeScreen());

    });
  }

  showLoading({String title = "Loading..."}){
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: 
        BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 40,
            child: Row(
              children: [
                CircularProgressIndicator(
                  color: Colors.blueAccent,


                ),
                SizedBox(
                  width: 20,
                ),
                Text(title)
              ],
            ),
          ),
        )

      ),
      barrierDismissible: true,
    );
   
    
  }
   showBottom(){
      Get.bottomSheet(HomeScreen());
    }

    shoesnack(){
      Get.snackbar(
        "It is inventory code",
        "Hello everyone",
        icon: Icon(Icons.person),
        snackPosition: SnackPosition.BOTTOM
      );

      
    }
    showerror(){
      Get.dialog(
        Row(
          children: [
            Text("Check error"),
            SizedBox(height: 10,),

            CircularProgressIndicator(
              
            )
          ],

        )
      );
      
      }
}