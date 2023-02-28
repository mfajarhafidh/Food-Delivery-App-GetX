import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/login/views/login_view.dart';
import 'package:food_delivery/shares/button_widget/button_widget.dart';

import 'package:get/get.dart';

import '../../../../shares/color_theme_widget/color_theme_widget.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: const Color(0xFFF5F5F8),
          child: Column(
            children: [
              // SizedBox(
              //   height: 320,
              // ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration:
                        InputDecoration(hintText: "your name", labelText: "Name"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "your phone number", labelText: "Phone Number"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "you@example.com", labelText: "E-mail Address"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "your password",
                      labelText: "Password",
                    ),
                    autofocus: false,
                    obscureText: true,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ButtonWidget(textTitle: "Sign-up", screen: LoginView())
            ],
          ),
        ),
      ),
    );
  }
}
