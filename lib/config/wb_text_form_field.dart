import 'package:flutter/material.dart';

class WbTextFormField extends StatelessWidget {
  const WbTextFormField({
    super.key,
    required this.labelText,
    required this.labelFontSize20,
    required this.hintText,
    required this.hintTextFontSize20,
    required this.prefixIcon,
    required this.prefixIconSize48,
    required this.textFormFieldFontWeight,
    required this.textFormFieldFontColor,
    required this.fillColor,
  });

  final String labelText;
  final double labelFontSize20;
  final String hintText;
  final double hintTextFontSize20;
  final IconData prefixIcon;
  final double prefixIconSize48;
  final FontWeight textFormFieldFontWeight;
  final Color textFormFieldFontColor;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.top,
      maxLines: null,
      //validator: Validator.isValidEmail,
      style: TextStyle(
        fontSize: hintTextFontSize20, //20
        fontWeight: textFormFieldFontWeight, //FontWeight.w900,
        color: textFormFieldFontColor,
      ),
      textAlign: TextAlign.left,
      //textInputAction: TextInputAction.done,
      //obscureText: visibilityPassword, //Passwort sichtbar?
      /*--------------------------------- InputDecoration ---*/
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.start,
        filled: true,
        fillColor: fillColor, //wbColorBackgroundBlue
        contentPadding: const EdgeInsets.fromLTRB(48, 16, 16, 16),

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
          fontSize: labelFontSize20, //28,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.white,
        ),

        /*--- prefixIcon ---*/
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            size: prefixIconSize48, //28
            prefixIcon, //Icons.email_rounded,
          ),
        ),

        /*--- hintText ---*/
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: hintTextFontSize20,
          fontWeight: FontWeight.w900,
          color: Colors.black38,
        ),

        /*--- border ---*/
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),

      /*--- onChanged ---*/
      // onChanged: (String newInputPassword) {
      //   log("Eingabe: $newInputPassword");
      //   inputPassword = newInputPassword;
      //   setState(() => inputPassword = newInputPassword);
      //   if (newInputPassword == userPassword) {
      //     log("Das Passwort $userPassword ist KORREKT!");
      //     // ACHTUNG: Beim player den sound OHNE "assets/...", sondern gleich mit "sound/..." eintragen (siehe unten):
      //     player.play(AssetSource("sound/sound06pling.wav"));
      //   } else {
      //     log("Die Eingabe für das Passwort ist NICHT korrekt!");
      //   }
      // },
    );
  }
}
