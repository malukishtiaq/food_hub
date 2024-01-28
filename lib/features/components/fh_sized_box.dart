import 'package:flutter/material.dart';

class FHSizedBox extends StatelessWidget {
  final double screenHeightFactor;

  const FHSizedBox({Key? key, this.screenHeightFactor = 0.03})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * screenHeightFactor);
  }
}
