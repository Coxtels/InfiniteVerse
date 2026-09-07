import 'package:flutter/material.dart';
import 'package:infinite_verse/models/novel.dart';
import 'package:infinite_verse/widgets/cards/detail_character.dart';
import 'package:infinite_verse/widgets/globals/custom_button.dart';

class DetailNovelCardPage extends StatefulWidget {
  final Novel novel;

  const DetailNovelCardPage({super.key, required this.novel});

  @override
  State<DetailNovelCardPage> createState() => _DetailNovelCardPageState();
}

class _DetailNovelCardPageState extends State<DetailNovelCardPage> {
  bool isFavorite = false;
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Image.network(
                        widget.novel.coverImageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(
                              Icons.wifi_off,
                              color: Colors.grey,
                              size: 40,
                            ),
                          );
                        },
                      ),
                    ),

                    Positioned(
                      top: 12,
                      left: 12,
                      child: SafeArea(
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withValues(alpha: 0.20),
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: const EdgeInsets.all(15.0),
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
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 13.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5.0,
                      children: [
                        Text(
                          widget.novel.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),

                        Text(
                          widget.novel.synopsis,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    itemCount: widget.novel.characters.length,
                    itemBuilder: (context, index) {
                      final character = widget.novel.characters[index];
                      return DetailCharacter(
                        imageUrl: character.imageUrl,
                        nameChar: character.name,
                      );
                    },
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15.0),
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 10.0,
                  ),
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
                                  widget.novel.author.name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${widget.novel.author.followerCount} followers",
                                  style: TextStyle(fontSize: 13),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),

                            Text(
                              widget.novel.author.bio,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shadowColor: WidgetStateColor.transparent,
                        ),
                        child: Text("Follow"),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 100),
              ],
            ),
          ),

          Positioned(
            left: 15,
            right: 15,
            bottom: 0,
            child: SafeArea(
              top: false,
              child: Container(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
