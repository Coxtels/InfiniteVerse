import 'package:flutter/material.dart';
import 'package:infinite_verse/models/novel.dart';

class DetailInformation extends StatelessWidget {
  final Novel novel;

  const DetailInformation({super.key, required this.novel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 1.0),
        splashColor: Colors.transparent,
        minTileHeight: 0.0,
        collapsedShape: const Border(),
        shape: const Border(),

        title: Text(
          "Informasi Detail",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        children: [
          Text("Plot", style: TextStyle(fontWeight: FontWeight.w600)),
          Text(novel.plot),
        ],
      ),
    );
  }
}
