import 'package:flutter/material.dart';

class DetailNovelPage extends StatelessWidget {
  const DetailNovelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: 400,
              child: Image.network(
                "https://placehold.net/800x600.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
