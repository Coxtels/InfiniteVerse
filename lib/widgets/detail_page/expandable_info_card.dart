import 'package:flutter/material.dart';

class ExpandableInfoCard extends StatelessWidget {
  final String title;
  final Widget child;

  const ExpandableInfoCard({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 1.0),
        splashColor: Colors.transparent,
        minTileHeight: 0.0,
        collapsedShape: const Border(),
        shape: const Border(),

        title: Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
        children: [child],
      ),
    );
  }
}
