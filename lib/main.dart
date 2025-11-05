import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:f1_quiz_app/quiz_provider.dart';
import 'package:f1_quiz_app/screens/home_screen.dart';

void main() {
  runApp(const F1QuizApp());
}

class F1QuizApp extends StatelessWidget {
  const F1QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuizProvider(),
      child: MaterialApp(
        title: 'F1 Quiz App',
        debugShowCheckedModeBanner: false,

        // Tema Kustom Modern
        theme: _buildTheme(Brightness.light),
        darkTheme: _buildTheme(Brightness.dark),
        themeMode: ThemeMode.system,

        home: const HomeScreen(),
      ),
    );
  }

  // FUNGSI TEMA MODERN
  ThemeData _buildTheme(Brightness brightness) {
    var baseTheme = ThemeData(brightness: brightness);
    // Gunakan font kustom 'Titillium Web'
    var textTheme = GoogleFonts.titilliumWebTextTheme(baseTheme.textTheme);

    // Definisikan warna dasar
    const Color f1Red = Color(0xFFE10600);
    const Color f1Dark = Color(0xFF1F1F1F); // Lebih lembut dari hitam pekat
    const Color f1Light = Color(0xFFFAFAFA); // Lebih lembut dari putih pekat
    const Color f1SurfaceDark = Color(0xFF2C2C2C);

    // Terapkan textTheme yang sudah di-override
    textTheme = textTheme.copyWith(
      headlineMedium: textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold, // Judul lebih tebal
      ),
      headlineSmall: textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.w600, // Pertanyaan kuis
      ),
      titleLarge: textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );

    return baseTheme.copyWith(
      textTheme: textTheme,
      primaryColor: f1Red,
      scaffoldBackgroundColor: brightness == Brightness.dark ? f1Dark : f1Light,
      colorScheme: brightness == Brightness.dark
          ? const ColorScheme.dark(
        primary: f1Red,
        secondary: f1Red,
        surface: f1SurfaceDark, // Warna card di dark mode
      )
          : const ColorScheme.light(
        primary: f1Red,
        secondary: f1Red,
        surface: Colors.white, // Warna card di light mode
      ),

      // Tema Card Modern
      cardTheme: CardThemeData(
        elevation: 2, // Bayangan halus
        margin: const EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // Sudut lebih bulat
        ),
      ),

      // Tema Input (Text Field) Modern
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: brightness == Brightness.dark
            ? f1SurfaceDark
            : Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none, // Hilangkan border awal
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: f1Red, width: 2), // Border saat fokus
        ),
      ),

      // Tema Tombol Utama (ElevatedButton)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0), // Sudut bulat
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}