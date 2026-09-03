import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.child,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderRadius = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(borderRadius),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.black.withValues(alpha: 0.2),
        highlightColor: Colors.black.withValues(alpha: 0.1),
        child: SizedBox(
          height: height,
          width: width,
          child: Center(child: child),
        ),
      ),
    );
  }
}
