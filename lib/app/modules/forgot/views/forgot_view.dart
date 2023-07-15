import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/forgot_controller.dart';

class ForgotView extends GetView<ForgotController> {
  const ForgotView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.offAllNamed(Routes.LOGIN);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Reset Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30, color: Color.fromRGBO(96, 97, 250, 1)),
              ),
              Image.asset(
                "assets/resetHero.png",
                width: 300,
                height: 300,
              ),
              Text("write your email to get message reset password!!",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 10,
                width: 10,
              ),
              TextField(
                controller: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: "Email",
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              SizedBox(
                  height: 50,
                  width: 290,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 40, 43, 236),
                          elevation: 5,
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.all(20)),
                      child: Text('Reset Password')))
            ],
          ),
        ));
  }
}
