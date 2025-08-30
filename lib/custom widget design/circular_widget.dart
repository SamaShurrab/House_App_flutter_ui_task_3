import 'package:flutter/widgets.dart';

class CircularWidget extends StatelessWidget {
  final double height;
  final double width;
  final Widget widget;
  const CircularWidget({super.key, required this.height, required this.width,required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(shape: BoxShape.circle,),
      child: widget,
    );
  }
}
