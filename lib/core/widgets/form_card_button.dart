import 'package:flutter/material.dart';

class FormCardButton extends StatefulWidget {
  const FormCardButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final Function() onPressed;
  @override
  State<FormCardButton> createState() => _FormCardButtonState();
}

class _FormCardButtonState extends State<FormCardButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: Colors.cyan,
      onPressed: widget.onPressed,
      child: Text(
        widget.title,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }
}
