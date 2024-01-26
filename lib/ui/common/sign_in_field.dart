import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignInfield extends StatefulWidget {
  String labelText;
  TextInputType? keyBoardType;
  int? maxLength;
  String? suffixText;
  bool? obscureText;
  TextEditingController controller;

  SignInfield({
    Key? key,
    required this.labelText,
    this.keyBoardType,
    this.maxLength,
    this.suffixText,
    this.obscureText,
    required this.controller,
  }) : super(key: key);

  @override
  State<SignInfield> createState() => _SignInfield();
}

class _SignInfield extends State<SignInfield> {
  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration = InputDecoration(
      labelText: widget.labelText,
      labelStyle: const TextStyle(
        color: Color(0xFF000000),
        fontFamily: 'Afacad',
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      contentPadding: const EdgeInsets.all(20.0),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Color(0xFF000000),
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Color(0xFF40C4FF),
          width: 2,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Color(0xFF40C4FF),
          width: 2,
        ),
      ),
      suffixStyle: const TextStyle(
        color: Color(0xFF000000),
        fontFamily: 'Afacad',
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    );

    if (widget.suffixText != null) {
      inputDecoration =
          inputDecoration.copyWith(suffixText: '${widget.suffixText}');
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: TextFormField(
          controller: widget.controller,
          cursorColor: const Color(0xFF000000),
          cursorWidth: 3,
          cursorRadius: const Radius.circular(5),
          obscureText: widget.obscureText ?? false,
          style: const TextStyle(color: Color(0xFF000000)),
          keyboardType: widget.keyBoardType ?? TextInputType.text,
          // ignore: prefer_if_null_operators
          maxLength: widget.maxLength != null ? widget.maxLength : null,
          decoration: inputDecoration,
          validator: (value) {
            if (value == null || value == '') {
              return 'Enter ${widget.labelText}';
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      ),
    );
  }
}
