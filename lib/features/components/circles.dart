import 'package:flutter/material.dart';

class FHCircleWidget extends StatefulWidget {
  final int circleColor;
  final double? size;
  const FHCircleWidget({super.key, required this.circleColor, this.size = 100});

  @override
  State<FHCircleWidget> createState() => _FHCircleWidgetState();
}

class _FHCircleWidgetState extends State<FHCircleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size,
      width: widget.size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.size! / 2),
        color: Color(widget.circleColor),
      ),
    );
  }
}
