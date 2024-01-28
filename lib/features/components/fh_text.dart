import 'package:flutter/material.dart';

class FHText extends StatefulWidget {
  final String textValue;
  const FHText({super.key, this.textValue = ''});

  @override
  State<FHText> createState() => _FHTextState();
}

class _FHTextState extends State<FHText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.textValue,
      style: const TextStyle(
        fontFamily: "Sofia Pro",
        fontSize: 36.41270065307617,
        fontWeight: FontWeight.w600,
        color: Color(0xff000000),
        height: 42 / 36.41270065307617,
      ),
      textAlign: TextAlign.left,
    );
  }
}
