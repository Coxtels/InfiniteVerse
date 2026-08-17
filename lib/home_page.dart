import 'package:flutter/material.dart';
import 'package:infinite_verse/detail_novel_page.dart';
import 'package:infinite_verse/login_page.dart';
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
            const Icon(Icons.image),
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
                          color: Color.fromARGB(
                            255,
                            random.nextInt(256),
                            random.nextInt(256),
                            random.nextInt(256),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: const Offset(0, 0),
                            ),
                          ],
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
