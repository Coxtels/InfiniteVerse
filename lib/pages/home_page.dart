import 'package:flutter/material.dart';
import 'package:infinite_verse/pages/login_page.dart';
import 'package:infinite_verse/models/novel.dart';
import 'package:infinite_verse/widgets/cards/novel_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Novel> daftraNovel = [
    Novel(title: "Re:Zero", imageUrl: "https://picsum.photos/id/1/200/300"),
    Novel(title: "Maou Gakuin", imageUrl: "https://picsum.photos/id/2/200/300"),
    Novel(title: "Steins Gate", imageUrl: "https://picsum.photos/id/3/200/300"),
    Novel(title: "Metante", imageUrl: "https://picsum.photos/id/4/200/300"),
    Novel(
      title: "Tate No Yushaa apa jjjjjjjjj",
      imageUrl: "https://picsum.photos/id/5/200/300",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Row(
          children: [
            Image.asset('assets/images/icon_apk.png', width: 40, height: 40),
            const SizedBox(width: 5),
            const Text(
              "Infinite Verse",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            icon: const Icon(Icons.login),
          ),
        ],
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15.0),
            child: const Text(
              "Paling Populer",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              itemCount: daftraNovel.length,
              itemBuilder: (context, index) {
                final novel = daftraNovel[index];
                return NovelCard(title: novel.title, imageUrl: novel.imageUrl);
              },
            ),
          ),
        ],
      ),
    );
  }
}
