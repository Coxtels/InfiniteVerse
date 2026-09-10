import 'package:flutter/material.dart';
import 'package:infinite_verse/models/novel.dart';

class DetailCoverHeader extends StatelessWidget {
  final Novel novel;

  const DetailCoverHeader({super.key, required this.novel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: Image.network(
            novel.coverImageUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Center(
                child: Icon(Icons.wifi_off, color: Colors.grey, size: 40),
              );
            },
          ),
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
