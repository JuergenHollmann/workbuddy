import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workbuddy/config/wb_colors.dart';

class WbTextFormField extends StatelessWidget {
  const WbTextFormField({
    super.key,
    required this.labelText,
    required this.labelFontSize20,
    required this.hintText,
    this.hintTextFontSize16,
    required this.inputTextFontSize22,
    required this.inputFontWeightW900,
    required this.inputFontColor,
    this.prefixIcon,
    this.prefixIconSize28,
    required this.fillColor,
    this.textInputTypeOnKeyboard,
    this.textInputAction, // default: Enter | TextInputAction.done
    this.controller,
    this.onChanged,
    // required Null Function(String userNameTEC) onChanged,
    // this.suffixIcon,
    // this.suffixIconSize48,
    // this.autofillHints,
  });

  final String labelText;
  final double labelFontSize20;
  final String hintText;
  final double? hintTextFontSize16;
  final double inputTextFontSize22;
  final IconData? prefixIcon;
  final double? prefixIconSize28;
  final FontWeight inputFontWeightW900;
  final Color inputFontColor;
  final Color fillColor;
  final TextInputType? textInputTypeOnKeyboard;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final Function(String inputInWbTextFormField)? onChanged;
  // final IconData? suffixIcon;
  // final double? suffixIconSize48;
  // final List<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    log("0051 - WbTextFormField - angeklickt");

    return TextFormField(
      // expands: true,
      maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
      keyboardType: textInputTypeOnKeyboard,
      textAlignVertical: TextAlignVertical.center,
      maxLines: null,
      //validator: Validator.isValidEmail,
      style: TextStyle(
        height: 1.1,
        fontSize: inputTextFontSize22,
        fontWeight: inputFontWeightW900,
        color: inputFontColor,
      ),
      textAlign: TextAlign.left,
      textInputAction: textInputAction,
      //obscureText: visibilityPassword, //Passwort sichtbar?
      /*--------------------------------- InputDecoration ---*/
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.start,
        filled: true,
        fillColor: fillColor, //wbColorBackgroundBlue
        //contentPadding: const EdgeInsets.fromLTRB(48, 16, 16, 16),
        contentPadding: const EdgeInsets.fromLTRB(16, 8, 0, 8),

        /*--- errorStyle ---*/
        errorStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.red,
          backgroundColor: Colors.yellow,
        ),

        /*--- labelStyle ---*/
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.blue,
          fontSize: labelFontSize20,
          fontWeight: FontWeight.bold,
          backgroundColor: wbColorLightYellowGreen,
        ),

        /*--- prefixIcon ---*/
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            size: prefixIconSize28, //28
            prefixIcon, //Icons.email_rounded,
          ),
        ),

        /*--- hintText ---*/
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: hintTextFontSize16,
          fontWeight: FontWeight.w900,
          color: Colors.black45,
        ),

        // /*--- SuffixIcon ---*/
        // suffixIcon: Padding(
        //   padding: const EdgeInsets.all(8),
        //   child: Icon(
        //     size: suffixIconSize48, //28
        //     suffixIcon, //Icons.email_rounded,
        //   ),
        // ),

        /*--- border ---*/
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),

      /*--- autofillHints ---*/
      // autofillHints: autofillHints, // wie funzt das?

      /*--- onChanged ---*/
      controller: controller,
      onChanged: onChanged,
    );
  }
}
