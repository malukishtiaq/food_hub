import 'package:flutter/material.dart';
import 'package:food_hub/features/components/circles.dart';

class FHCircles extends StatelessWidget {
  final bool hasBackIcon;
  const FHCircles({super.key, this.hasBackIcon = true});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final dynamicPadding = screenWidth * 0.03;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Transform.translate(
              offset: const Offset(-110, -60),
              child: const FHCircleWidget(
                circleColor: 0xFFFE704C,
                size: 120,
              ),
            ),
            Transform.translate(
              offset: const Offset(-110, -60),
              child: const FHCircleWidget(
                size: 50,
                circleColor: 0xFFFFFFFF,
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -100),
              child: const FHCircleWidget(
                circleColor: 0xFFFFECE7,
                size: 215,
              ),
            ),
            hasBackIcon
                ? Positioned(
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
                  )
                : Container(),
          ],
        ),
        Transform.translate(
          offset: const Offset(100, -100),
          child: const FHCircleWidget(
            circleColor: 0xFFFE724C,
            size: 215,
          ),
        ),
      ],
    );
  }
}
