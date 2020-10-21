import 'package:boilerplate_firebase_getx/app/modules/auth/firebase_auth.controller.dart';
import 'package:boilerplate_firebase_getx/app/routes/app_routes.dart';
import 'package:boilerplate_firebase_getx/app/theme/app_colors.dart';
import 'package:boilerplate_firebase_getx/app/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';

import 'local_widgets/bezierContainer.dart';
import 'local_widgets/create_account.dart';
import 'local_widgets/submit_button.dart';
import 'local_widgets/textField.dart';
import 'local_widgets/title.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();

    return GetX<FirebaseAuthController>(
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
              LoadingOverlay(
                child: Container(
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
                            title: "Nome",
                            isPassword: false,
                            keyboardType: TextInputType.name,
                            onChanged: _.onChangedName,
                            validator: validateName,
                          ),
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
                          CustomTextField(
                            title: "Confirmar a senha",
                            isPassword: true,
                            keyboardType: TextInputType.text,
                            onChanged: _.onChangedConfirmPassword,
                            validator: validatePassword,
                          ),
                          SizedBox(height: 20),
                          SubmitButton(
                            title: "Cadastrar",
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _.registro();
                              }
                            },
                          ),
                          SizedBox(height: height * .055),
                          CreateAccount(
                            title: "Já possui conta?",
                            action: "Entre",
                            page: AppRoutes.LOGIN,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                isLoading: _.isLoading.value,
                color: AppColors.DARK,
                progressIndicator: CircularProgressIndicator(
                  backgroundColor: AppColors.PRIMARY_COLOR,
                ),
                opacity: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
