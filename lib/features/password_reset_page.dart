import 'package:flutter/material.dart';

import 'components/fh_button.dart';
import 'components/fh_circles.dart';
import 'components/fh_input.dart';
import 'components/fh_padding.dart';
import 'components/fh_sized_box.dart';
import 'components/fh_text.dart';

class PasswordResetPage extends StatefulWidget {
  const PasswordResetPage({super.key});

  @override
  State<PasswordResetPage> createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FHCircles(),
          FHPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FHText(textValue: "Resset Password"),
                FHSizedBox(),
                Text(
                    "Please enter your email address to request a password reset",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                FHSizedBox(),
                FHInput(
                  inputName: 'Email',
                  hintText: '',
                ),
                FHSizedBox(),
                FHButton(inputName: 'SEND NEW PASSWORD'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
