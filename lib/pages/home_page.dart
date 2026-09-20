import 'package:flutter/material.dart';
import 'package:infinite_verse/data/novel_data.dart';
import 'package:infinite_verse/pages/login_page.dart';
import 'package:infinite_verse/widgets/cards/novel_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              itemCount: daftarNovel.length,
              itemBuilder: (context, index) {
                final novel = daftarNovel[index];
                return NovelCard(novel: novel);
              },
            ),
          ),

          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
