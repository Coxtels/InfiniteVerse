import 'package:flutter/material.dart';
import 'package:infinite_verse/models/novel.dart';

class DetailInfoCard extends StatelessWidget {
  final Novel novel;

  const DetailInfoCard({super.key, required this.novel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5.0,
          children: [
            Text(
              novel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            Text(novel.synopsis, maxLines: 4, overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
