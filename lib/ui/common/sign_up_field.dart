import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUpField extends StatefulWidget {
  String labelText;
  TextInputType? keyBoardType;
  int? maxLength;
  String? suffixText;
  bool? obscureText;
  VoidCallback? onChanged;
  final TextEditingController controller;

  SignUpField({
    Key? key,
    required this.labelText,
    this.keyBoardType,
    this.maxLength,
    this.suffixText,
    this.obscureText,
    this.onChanged,
    required this.controller,
  }) : super(key: key);

  @override
  State<SignUpField> createState() => _SignUpField();
}

class _SignUpField extends State<SignUpField> {
  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration = InputDecoration(
      labelText: widget.labelText,
      labelStyle: Theme.of(context).textTheme.labelSmall,
      contentPadding: const EdgeInsets.all(10),
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(40),
      //   borderSide: const BorderSide(
      //     color: Color(0xFF000000),
      //     width: 2,
      //   ),
      // ),
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
          color: Color(0xFFffef00),
          width: 2,
        ),
      ),
      suffixStyle: const TextStyle(
        color: Color(0xFF000000),
        fontFamily: 'Afacad',
        fontWeight: FontWeight.w800,
        fontSize: 18,
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
