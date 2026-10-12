import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final String bio;
  final String? subtitle;
  final VoidCallback? onFollow;

  const ProfileCard({
    super.key,
    required this.name,
    required this.bio,
    this.imageUrl,
    this.subtitle,
    this.onFollow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              backgroundImage: imageUrl != null
                  ? CachedNetworkImageProvider(imageUrl!)
                  : null,
              child: imageUrl == null ? const Icon(Icons.person) : null,
            ),
          ),

          SizedBox(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 5.0,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: TextStyle(fontSize: 13),
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),

                Text(bio, maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: onFollow ?? () {},
            style: ButtonStyle(shadowColor: WidgetStateColor.transparent),
            child: Text("Follow"),
          ),
        ],
      ),
    );
  }
}
