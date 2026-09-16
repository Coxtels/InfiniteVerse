import 'package:infinite_verse/models/author.dart';

class Character {
  final int characterId;
  final String name;
  final String imageUrl;
  final String description;
  final String? lore;
  final Author creator;

  Character({
    required this.characterId,
    required this.name,
    required this.imageUrl,
    required this.description,
    this.lore,
    required this.creator,
  });
}
