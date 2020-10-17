import 'package:boilerplate_firebase_getx/app/modules/auth/firebase_auth.controller.dart';
import 'package:boilerplate_firebase_getx/app/routes/app_routes.dart';
import 'package:boilerplate_firebase_getx/app/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'local_widgets/bezierContainer.dart';
import 'local_widgets/create_account.dart';
import 'local_widgets/submit_button.dart';
import 'local_widgets/textField.dart';
import 'local_widgets/title.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();

    return GetBuilder<FirebaseAuthController>(
      builder: (_) => Scaffold(
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: -height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: BezierContainer(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: height * .2),
                        CustomTitle(),
                        SizedBox(height: 50),
                        CustomTextField(
                          title: "Email",
                          isPassword: false,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: _.onChangedEmail,
                          validator: validateEmail,
                        ),
                        CustomTextField(
                          title: "Senha",
                          isPassword: true,
                          keyboardType: TextInputType.text,
                          onChanged: _.onChangedPassword,
                          validator: validatePassword,
                        ),
                        SizedBox(height: 20),
                        SubmitButton(
                          title: "Entrar",
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _.login();
                            }
                          },
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.FORGOT_PASSWORD);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Esqueceu a senha?',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * .055),
                        CreateAccount(
                          title: "Não possui conta?",
                          action: "Cadastre-se",
                          page: AppRoutes.REGISTRO,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
