import 'package:flutter/material.dart';
import 'package:infinite_verse/models/author.dart';

class AuthorCard extends StatelessWidget {
  final Author author;

  const AuthorCard({super.key, required this.author});

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
            child: IconButton.filled(
              onPressed: () {},
              icon: Icon(Icons.person, size: 30),
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
                    Text(
                      author.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${author.followerCount} followers",
                      style: TextStyle(fontSize: 13),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),

                Text(author.bio, maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(shadowColor: WidgetStateColor.transparent),
            child: Text("Follow"),
          ),
        ],
      ),
    );
  }
}
