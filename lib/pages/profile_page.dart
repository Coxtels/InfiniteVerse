import 'package:flutter/material.dart';
import 'package:infinite_verse/widgets/cards/profile_action_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Header Minimalis (Tanpa AppBar)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Aksi pengaturan
                    },
                    icon: Icon(
                      Icons.settings_outlined,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // 2. Info Profil Pengguna
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: colorScheme.primary.withValues(
                        alpha: 0.12,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 36,
                        color: colorScheme.primary,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Placeholder for name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Placeholder for an e-mail",
                            style: TextStyle(
                              fontSize: 13,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // 3. SizedBox yang menyimpan dua card: Bookmark & Like/Favorit
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Row(
                      children: [
                        // Card Bookmark
                        Expanded(
                          child: ProfileActionCard(
                            title: "Bookmark",
                            icon: Icons.bookmark,
                            iconColor: Colors.yellow,
                            onTap: () {
                              // Navigasi atau filter bookmark
                            },
                          ),
                        ),
                        const SizedBox(width: 14),

                        // Card Like / Favorite
                        Expanded(
                          child: ProfileActionCard(
                            title: "Favorit",
                            icon: Icons.favorite,
                            iconColor: Colors.redAccent,
                            onTap: () {
                              // Navigasi atau filter favorit
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 14),

                  SizedBox(
                    height: 200,
                    child: Row(
                      children: [
                        // Card Bookmark
                        Expanded(
                          child: ProfileActionCard(
                            title: "History",
                            icon: Icons.history,
                            iconColor: Colors.black,
                            onTap: () {
                              // Navigasi atau filter bookmark
                            },
                          ),
                        ),
                        const SizedBox(width: 14),

                        // Card Like / Favorite
                        Expanded(
                          child: ProfileActionCard(
                            title: "My Novel Creation",
                            icon: Icons.book,
                            iconColor: Colors.indigo,
                            onTap: () {
                              // Navigasi atau filter favorit
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Spasi bawah agar konten tidak tertutup oleh floating navbar
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
