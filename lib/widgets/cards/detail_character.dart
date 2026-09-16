import 'package:flutter/material.dart';
import 'package:infinite_verse/models/character.dart';
import 'package:infinite_verse/pages/info_character_page.dart';
import 'package:infinite_verse/widgets/globals/cached_image.dart';

class DetailCharacter extends StatelessWidget {
  final Character character;

  const DetailCharacter({super.key, required this.character});

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
                CachedImage(imageUrl: character.imageUrl),

                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              InfoCharacterPage(character: character),
                        ),
                      );
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
                character.name,
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
