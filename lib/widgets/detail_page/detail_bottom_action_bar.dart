import 'package:flutter/material.dart';
import 'package:infinite_verse/widgets/globals/custom_button.dart';

class DetailBottomActionBar extends StatefulWidget {
  const DetailBottomActionBar({super.key});

  @override
  State<DetailBottomActionBar> createState() => _DetailBottomActionBarState();
}

class _DetailBottomActionBarState extends State<DetailBottomActionBar> {
  bool isFavorite = false;
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            height: 45,
            width: 45,
            borderRadius: 10.0,
            backgroundColor: Colors.grey.withValues(alpha: 0.2),
            onTap: () {
              setState(() {
                isBookmark = !isBookmark;
              });
            },
            child: Icon(
              isBookmark ? Icons.bookmark : Icons.bookmark_outline,
              color: isBookmark ? Colors.yellow : Colors.black,
            ),
          ),

          CustomButton(
            height: 45,
            width: 45,
            borderRadius: 10.0,
            backgroundColor: Colors.grey.withValues(alpha: 0.2),
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.black,
            ),
          ),

          CustomButton(
            height: 45,
            width: 200,
            borderRadius: 10.0,
            backgroundColor: Colors.amberAccent,
            onTap: () {},
            child: Text(
              "Start Now",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
