import 'package:flutter/material.dart';

class FHPadding extends StatelessWidget {
  final Widget child;
  final double screenHeightFactor;

  const FHPadding(
      {Key? key, required this.child, this.screenHeightFactor = 0.03})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.height * screenHeightFactor),
      child: child,
    );
  }
}
