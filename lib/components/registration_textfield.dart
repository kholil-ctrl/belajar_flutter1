import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final bool onlyNumber;

  const RegistrationTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.onlyNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: onlyNumber
          ? TextInputType.number
          : TextInputType.text,
      inputFormatters: onlyNumber
          ? [FilteringTextInputFormatter.digitsOnly]
          : null,
      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}