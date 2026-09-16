import 'package:infinite_verse/models/author.dart';
import 'package:infinite_verse/models/character.dart';
import 'package:infinite_verse/models/novel.dart';

final Author sampleAuthor = Author(
  authorId: 1,
  name: "@Febri",
  imageUrl: "https://placehold.net/avatar.png",
  bio: "try again. again.",
  followerCount: 3,
);

final Novel sampleNovel = Novel(
  novelId: 1,
  title: "Manusia Setengah Harimau Yang Sedang Mandi",
  coverImageUrl: "https://picsum.photos/id/1/200/300",
  synopsis: "Bla bla bla ble ble ble blu blu blu blu hap",
  plot:
      "Dahulu kala ada manusia yang setengah berubah jadi harimau. "
      "Setiap kali mandi, kekuatannya hilang. "
      "Ia harus menemukan kembali jati dirinya sebelum musim hujan tiba.",
  author: sampleAuthor,
  characters: [
    Character(
      characterId: 1,
      name: "Ichigo",
      imageUrl: "https://placehold.net/shape-800x600.png",
      description: "Pemuda berambut oranye yang punya kekuatan harimau.",
      creator: sampleAuthor,
    ),

    Character(
      characterId: 2,
      name: "Rukia",
      imageUrl: "https://placehold.net/shape-800x600.png",
      description: "Teman Ichigo yang selalu mendampinginya.",
      creator: sampleAuthor,
    ),
  ],
);

final List<Novel> daftarNovel = [
  sampleNovel,
  Novel(
    novelId: 2,
    title: "Re:Zero",
    coverImageUrl: "https://picsum.photos/id/2/200/300",
    synopsis: "Seorang pemuda terjebak di dunia lain.",
    plot: "Plot lengkap Re:Zero di sini.",
    author: sampleAuthor,
    characters: [
      Character(
        characterId: 3,
        name: "Subaru",
        imageUrl: "https://placehold.net/shape-800x600.png",
        description: "Pemuda yang bisa kembali dari kematian.",
        creator: sampleAuthor,
      ),
    ],
  ),
  Novel(
    novelId: 3,
    title: "Maou Gakuin",
    coverImageUrl: "https://picsum.photos/id/3/200/300",
    synopsis: "Raja Iblis bereinkarnasi setelah 2000 tahun.",
    plot: "Plot lengkap Maou Gakuin di sini.",
    author: sampleAuthor,
    characters: [
      Character(
        characterId: 4,
        name: "Anos",
        imageUrl: "https://placehold.net/shape-800x600.png",
        description: "Raja Iblis yang terlalu kuat.",
        creator: sampleAuthor,
      ),
    ],
  ),
  Novel(
    novelId: 4,
    title: "Tate No Yushaa",
    coverImageUrl: "https://picsum.photos/id/4/200/300",
    synopsis: "Seorang ksatria tameng, yang di khianati oleh negri nya sendiri",
    plot: "Plot lengkap Maou Gakuin di sini.",
    author: sampleAuthor,
    characters: [
      Character(
        characterId: 5,
        name: "Yushaa",
        imageUrl: "https://placehold.net/shape-800x600.png",
        description: "Yushaa yang pantang menyerah",
        creator: sampleAuthor,
      ),
    ],
  ),
];
