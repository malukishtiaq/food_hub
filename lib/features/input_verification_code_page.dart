import 'package:flutter/material.dart';
import 'package:food_hub/features/components/fh_circles.dart';

import 'components/fh_button.dart';
import 'components/fh_input.dart';
import 'components/fh_padding.dart';
import 'components/fh_sized_box.dart';
import 'components/fh_text.dart';

class InputVerificationCodePage extends StatefulWidget {
  const InputVerificationCodePage({super.key});

  @override
  State<InputVerificationCodePage> createState() =>
      _InputVerificationCodePageState();
}

class _InputVerificationCodePageState extends State<InputVerificationCodePage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FHCircles(),
          FHPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FHText(textValue: "Registration"),
                FHSizedBox(),
                Text(
                  "Enter your phone number to verify your account",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                FHSizedBox(),
                FHInput(
                  inputName: 'Email',
                  hintText: '',
                ),
                FHSizedBox(),
                Center(child: FHButton(inputName: 'SEND')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
