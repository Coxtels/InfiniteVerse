import 'package:flutter/material.dart';
import 'package:infinite_verse/models/character.dart';
import 'package:infinite_verse/widgets/detail_page/cover_header.dart';
import 'package:infinite_verse/widgets/detail_page/expandable_info_card.dart';
import 'package:infinite_verse/widgets/detail_page/info_card.dart';
import 'package:infinite_verse/widgets/detail_page/profile_card.dart';

class InfoCharacterPage extends StatelessWidget {
  final Character character;

  const InfoCharacterPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CoverHeader(imageUrl: character.imageUrl),

            const SizedBox(height: 15),

            InfoCard(
              mainText: character.name,
              secondaryText: character.description,
            ),

            const SizedBox(height: 15),

            ProfileCard(
              name: character.creator.name,
              bio: character.creator.bio,
              subtitle: character.creator.followerLabel,
              onFollow: () {},
            ),

            const SizedBox(height: 15),

            ExpandableInfoCard(
              title: "Detail Information",
              child: Text(character.lore ?? character.description),
            ),
          ],
        ),
      ),
    );
  }
}
