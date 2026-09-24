import 'package:flutter/material.dart';

class AppTheme {
  // 1. Palet Warna Khusus Novel AI
  static const Color scaffoldBg = Color(0xFFF9F7F2); // Putih Tulang Kertas Novel
  static const Color surface = Colors.white; // Putih Bersih (Kartu & Navbar)
  static const Color textPrimary = Color(0xFF2C1810); // Coklat Espresso Gelap (Teks Utama & Icon)
  static const Color textSecondary = Color(0xFF8D7B68); // Coklat Taupe (Sinopsis & Label Inaktif)
  static const Color primaryAccent = Color(0xFFA31D1D); // Merah Crimson (Navbar onSelect & Aksen)

  // 2. Konfigurasi Tema Terang (Light Theme)
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: scaffoldBg,

      // Warna dasar sistem Flutter
      colorScheme: const ColorScheme.light(
        primary: primaryAccent,
        surface: surface,
        onSurface: textPrimary,
        onSurfaceVariant: textSecondary,
      ),

      // AppBar bersih menyatu dengan background putih tulang
      appBarTheme: const AppBarTheme(
        backgroundColor: scaffoldBg,
        foregroundColor: textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: TextStyle(
          color: textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),

      // Navbar: Tanpa gelembung abu-abu, icon merah saat onSelect, coklat saat inaktif
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: surface,
        indicatorColor: Colors.transparent, // Bersih tanpa gelembung pill
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: primaryAccent); // Merah Crimson saat aktif
          }
          return const IconThemeData(color: textSecondary); // Coklat Taupe saat inaktif
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              color: primaryAccent,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            );
          }
          return const TextStyle(
            color: textSecondary,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          );
        }),
      ),
    );
  }
}
