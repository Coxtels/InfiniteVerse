import 'package:flutter/material.dart';
import 'package:infinite_verse/detail_novel_page.dart';
import 'package:infinite_verse/login_page.dart';
import 'package:infinite_verse/widgets/novel_card.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final random = math.Random();

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
              itemCount: 10,
              itemBuilder: (context, index) {
                return NovelCard(random: random, title: "Judul $index");
              },
            ),
          ),

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
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailNovelPage(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 110,
                        margin: const EdgeInsets.only(right: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/placeholder_card.jpg',
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 100,
                        child: const Text(
                          "TITLE Blaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                          style: TextStyle(fontWeight: FontWeight.w600),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
