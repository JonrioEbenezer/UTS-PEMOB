import 'package:f1_quiz_app/question_model.dart';

// Contoh 5 pertanyaan F1
final List<QuestionModel> dummyF1Questions = [
  QuestionModel(
    questionText: "Tim F1 manakah yang dikenal sebagai \'Scuderia\'?",
    options: ["Mercedes", "Red Bull", "Ferrari", "McLaren"],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    questionText: "Siapa pemegang rekor kejuaraan dunia F1 terbanyak (bersama)?",
    options: ["Ayrton Senna", "Lewis Hamilton", "Sebastian Vettel", "Alain Prost"],
    correctAnswerIndex: 1, // (Hamilton & Schumacher, 7)
  ),
  QuestionModel(
    questionText: "Apa kepanjangan dari \'DRS\' dalam F1?",
    options: [
      "Data Recovery System",
      "Driver Radio Support",
      "Dynamic Response System",
      "Drag Reduction System"
    ],
    correctAnswerIndex: 3,
  ),
  QuestionModel(
    questionText: "Sirkuit mana yang terkenal dengan tikungan \'Eau Rouge\'?",
    options: ["Monza", "Silverstone", "Spa-Francorchamps", "Monaco"],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    questionText: "Siapa yang memenangkan Kejuaraan Dunia F1 2023?",
    options: ["Lewis Hamilton", "Charles Leclerc", "Lando Norris", "Max Verstappen"],
    correctAnswerIndex: 3,
  ),
  QuestionModel(
    questionText: "Tim F1 apa ini dari logo sponsor yang ada?",
    options: ["Ferrari", "Redbull", "Vcarb", "Mclaren"],
    correctAnswerIndex: 3,
    imagePath: "assets/images/logosponsorf1.png",
  ),
  QuestionModel(
    questionText: "Negara mana yang menjadi tuan rumah Grand Prix pertama dalam sejarah F1 pada 1950?",
    options: ["Italia", "Inggris", "Prancis", "Jerman"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    questionText: "Siapa pembalap yang dijuluki 'The Iceman'?",
    options: ["Kimi Räikkönen", "Fernando Alonso", "Sebastian Vettel", "Valtteri Bottas"],
    correctAnswerIndex: 0,
  ),
  QuestionModel(
    questionText: "Apa warna utama tim Mercedes di musim 2020?",
    options: ["Silver", "Hitam", "Biru", "Hijau"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    questionText: "Sirkuit mana yang memiliki lurusan terpanjang di kalender F1?",
    options: ["Monza", "Baku", "Spa-Francorchamps", "Monaco"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    questionText: "Berapa jumlah tim yang berkompetisi di musim F1 2024?",
    options: ["8", "10", "12", "14"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    questionText: "Apa fungsi utama Safety Car dalam balapan F1?",
    options: [
      "Menambah kecepatan pembalap",
      "Menjaga jarak antar mobil saat kondisi berbahaya",
      "Memberi penalti",
      "Mengawasi pit stop"
    ],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    questionText: "Pembalap F1 termuda yang memenangkan balapan adalah?",
    options: ["Charles Leclerc", "Lando Norris", "Max Verstappen", "Sebastian Vettel"],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    questionText: "Apa arti dari bendera kuning di F1?",
    options: [
      "Balapan dihentikan",
      "Ada bahaya, dilarang menyalip",
      "Kondisi trek basah",
      "Pit lane ditutup"
    ],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    questionText: "Ban F1 dengan garis hijau menandakan jenis apa?",
    options: ["Hard", "Soft", "Medium", "Intermediate"],
    correctAnswerIndex: 3,
  ),
  QuestionModel(
    questionText: "Tim manakah yang bermarkas di Milton Keynes, Inggris?",
    options: ["Ferrari", "Red Bull Racing", "Mercedes", "McLaren"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    questionText: "Sirkuit jalan raya terpanjang di kalender F1 adalah?",
    options: ["Marina Bay", "Las Vegas", "Baku", "Monaco"],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    questionText: "Apa nama sistem komunikasi antara pembalap dan tim?",
    options: ["Radio", "Bluetooth", "Telemetry", "Intercom"],
    correctAnswerIndex: 0,
  ),
  QuestionModel(
    questionText: "Apa warna bendera yang menandakan balapan selesai?",
    options: ["Merah", "Putih", "Hitam-putih kotak", "Hijau"],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    questionText: "Pembalap asal Spanyol yang dua kali juara dunia adalah?",
    options: ["Carlos Sainz", "Fernando Alonso", "Pedro de la Rosa", "Marc Gené"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    questionText: "Sistem yang digunakan untuk mengurangi waktu pit stop disebut?",
    options: ["Fast Lane", "Pit Strategy", "Quick Stop", "Pit Automation"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    questionText: "Mobil berikut identik dengan warna apa?",
    options: ["Kuning", "Biru tua", "Merah", "Hitam"],
    correctAnswerIndex: 2,
    imagePath: "assets/images/mobilf1ferrari.jpeg",
  ),
  QuestionModel(
    questionText: "Logo berikut milik tim mana?",
    options: ["Aston Martin", "Mercedes", "Williams", "Alpine"],
    correctAnswerIndex: 0,
    imagePath: "assets/images/astonmartinlogo.png",
  ),
  QuestionModel(
    questionText: "Di mana sirkuit Suzuka berada?",
    options: ["Jepang", "Cina", "Korea Selatan", "Singapura"],
    correctAnswerIndex: 0,
  ),
  QuestionModel(
    questionText: "Berapa lap biasanya dalam balapan GP Monaco?",
    options: ["51", "58", "70", "78"],
    correctAnswerIndex: 3,
  ),
  QuestionModel(
    questionText: "Tim F1 yang memiliki Sponsor ini?",
    options: ["Mclaren","Ferarri","Mercedes","Alpine"],
    correctAnswerIndex: 2,
    imagePath: "assets/images/logosponsormercedesf1.png",
  ),
];