import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxrouting/controller/main_controller.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  Map userData = {'email': "", 'password': ""};

  loginUser(context) {
    if (_formKey.currentState!.validate()) {
      print(userData);
    }
  }

  MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150.0,
                    width: 190.0,
                    padding: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Center(
                      child: Image(image: NetworkImage("https://venturebeat.com/wp-content/uploads/2018/02/google-flutter-logo.png?fit=578%2C289&strip=all"))
                    ),
                  ),
                  TextFormField(
                    onSaved: (value) {
                      userData['email'] = value;
                    },
                    decoration: InputDecoration(hintText: "Enter Email"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter User Name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    onSaved: (value) {
                      this.userData['password'] = value;
                    },
                    decoration: InputDecoration(hintText: "Enter Password"),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.userLogin();
                      },
                      child: const Text('Login Now'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
