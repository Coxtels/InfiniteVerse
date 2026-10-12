import 'package:flutter/material.dart';
import 'package:infinite_verse/models/novel.dart';
import 'package:infinite_verse/widgets/cards/detail_character.dart';
import 'package:infinite_verse/widgets/detail_page/profile_card.dart';
import 'package:infinite_verse/widgets/detail_page/detail_bottom_action_bar.dart';
import 'package:infinite_verse/widgets/detail_page/cover_header.dart';
import 'package:infinite_verse/widgets/detail_page/expandable_info_card.dart';
import 'package:infinite_verse/widgets/detail_page/info_card.dart';

class DetailNovelCardPage extends StatefulWidget {
  final Novel novel;

  const DetailNovelCardPage({super.key, required this.novel});

  @override
  State<DetailNovelCardPage> createState() => _DetailNovelCardPageState();
}

class _DetailNovelCardPageState extends State<DetailNovelCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CoverHeader(imageUrl: widget.novel.coverImageUrl),

                const SizedBox(height: 15),

                InfoCard(
                  mainText: widget.novel.title,
                  secondaryText: widget.novel.synopsis,
                ),

                const SizedBox(height: 15),

                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    itemCount: widget.novel.characters.length,
                    itemBuilder: (context, index) {
                      final character = widget.novel.characters[index];
                      return DetailCharacter(character: character);
                    },
                  ),
                ),

                ProfileCard(
                  name: widget.novel.author.name,
                  bio: widget.novel.author.bio,
                  subtitle: widget.novel.author.followerLabel,
                  onFollow: () {},
                ),

                const SizedBox(height: 5),

                ExpandableInfoCard(
                  title: "Detail Information",
                  child: Column(
                    children: [
                      const Text(
                        "Plot",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(widget.novel.plot),
                    ],
                  ),
                ),

                const SizedBox(height: 200),
              ],
            ),
          ),

          Positioned(
            left: 15,
            right: 15,
            bottom: 0,
            child: SafeArea(top: false, child: DetailBottomActionBar()),
          ),
        ],
      ),
    );
  }
}
