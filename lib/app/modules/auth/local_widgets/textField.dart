import 'package:boilerplate_firebase_getx/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool isPassword;
  final TextInputType keyboardType;
  final Function onChanged;
  final Function validator;

  const CustomTextField({
    Key key,
    this.title,
    this.isPassword,
    this.keyboardType,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: validator,
            onChanged: onChanged,
            keyboardType: keyboardType,
            obscureText: isPassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: AppColors.LIGHT,
              filled: true,
            ),
          )
        ],
      ),
    );
  }
}
