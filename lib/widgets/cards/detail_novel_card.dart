import 'package:flutter/material.dart';

class DetailNovelCard extends StatelessWidget {
  final String imageUrl;
  final String nameChar;

  const DetailNovelCard({
    super.key,
    required this.imageUrl,
    required this.nameChar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 100,
          margin: EdgeInsets.only(right: 10, bottom: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.16),
                blurRadius: 4,
                spreadRadius: 0,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(Icons.wifi_off, color: Colors.grey, size: 40),
                    );
                  },
                ),

                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      print("Test");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(right: 10),
          child: SizedBox(
            width: 100,
            child: Center(
              child: Text(
                nameChar,
                style: TextStyle(fontWeight: FontWeight.w600),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
