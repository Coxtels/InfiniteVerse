import 'package:flutter/material.dart';
import 'package:infinite_verse/widgets/globals/cached_image.dart';

class CoverHeader extends StatelessWidget {
  final String imageUrl;
  final double height;

  const CoverHeader({super.key, required this.imageUrl, this.height = 400});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: double.infinity,
          child: CachedImage(imageUrl: imageUrl),
        ),

        Positioned(
          top: 12,
          left: 12,
          child: SafeArea(
            child: CircleAvatar(
              backgroundColor: Colors.black.withValues(alpha: 0.20),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
