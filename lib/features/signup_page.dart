import 'package:flutter/material.dart';
import 'package:food_hub/features/components/fh_button.dart';
import 'package:food_hub/features/components/fh_circles.dart';
import 'package:food_hub/features/components/fh_input.dart';
import 'package:food_hub/features/components/fh_text.dart';

import 'components/fh_padding.dart';
import 'components/fh_social.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final dynamicSizedBoxHeight = screenHeight * 0.03;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          const FHCircles(),
          FHPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FHText(),
                SizedBox(
                  height: dynamicSizedBoxHeight,
                ),
                const FHInput(
                  inputName: 'Full name',
                  hintText: '',
                ),
                SizedBox(
                  height: dynamicSizedBoxHeight,
                ),
                const FHInput(
                  inputName: 'E-mail',
                  hintText: '',
                ),
                SizedBox(
                  height: dynamicSizedBoxHeight,
                ),
                const FHInput(
                  inputName: 'Password',
                  hintText: '',
                  isPassword: true,
                ),
                SizedBox(
                  height: dynamicSizedBoxHeight,
                ),
                const FHButton(inputName: 'SIGN UP'),
                SizedBox(
                  height: dynamicSizedBoxHeight,
                ),
                const Text(
                  "Already have an account? Login",
                  style: TextStyle(
                    fontFamily: "Sofia Pro",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 10 / 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 55,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 1,
                        width: 100,
                        color: const Color(0xffb3b3b3),
                      ),
                      const Text(
                        "Sign up with",
                        style: TextStyle(
                          fontFamily: "Sofia Pro",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5b5b5e),
                          height: 14 / 14,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        height: 1,
                        width: 100,
                        color: const Color(0xffb3b3b3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FHSocial(
                        inputName: 'Facebook',
                        icon: Icons.facebook_sharp,
                      ),
                      FHSocial(
                        inputName: 'Google',
                        icon: Icons.email_sharp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
