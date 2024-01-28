import 'package:flutter/material.dart';

class FHButton extends StatelessWidget {
  final String inputName;
  const FHButton({
    Key? key,
    required this.inputName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double borderRadiusValue = screenWidth / 10;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: FractionallySizedBox(
        widthFactor: 0.90,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 23),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(
                borderRadiusValue,
              ),
            ),
          ),
          child: Text(
            inputName,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
