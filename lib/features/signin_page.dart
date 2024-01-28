import 'package:flutter/material.dart';
import 'package:food_hub/features/components/fh_circles.dart';

import 'components/fh_button.dart';
import 'components/fh_input.dart';
import 'components/fh_padding.dart';
import 'components/fh_sized_box.dart';
import 'components/fh_social.dart';
import 'components/fh_text.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({super.key});

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final dynamicSizedBoxHeight = screenHeight * 0.03;
    final dynamicPadding = screenHeight * 0.03;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              const FHCircles(),
              Positioned(
                left: dynamicPadding,
                top: 50,
                child: Card(
                  elevation: 2,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 38,
                    ),
                  ),
                ),
              ),
            ],
          ),
          FHPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FHText(),
                const FHSizedBox(),
                const FHInput(
                  inputName: 'E-mail',
                  hintText: '',
                ),
                const FHSizedBox(),
                const FHInput(
                  inputName: 'Password',
                  hintText: '',
                  isPassword: true,
                ),
                const FHSizedBox(),
                const Text("Forgot password?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFFE724C),
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: dynamicSizedBoxHeight,
                ),
                const FHButton(inputName: 'SIGN IN'),
                const FHSizedBox(),
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
                        "Sign in with",
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
