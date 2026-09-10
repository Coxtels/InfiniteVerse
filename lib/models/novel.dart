import 'package:infinite_verse/models/author.dart';
import 'package:infinite_verse/models/character.dart';

class Novel {
  final int novelId;
  final String title;
  final String coverImageUrl;
  final String synopsis;
  final String plot;
  final Author author;
  final List<Character> characters;

  Novel({
    required this.novelId,
    required this.title,
    required this.coverImageUrl,
    required this.synopsis,
    required this.plot,
    required this.author,
    required this.characters,
  });
}
