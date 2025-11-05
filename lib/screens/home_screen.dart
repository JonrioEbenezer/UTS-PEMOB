import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:f1_quiz_app/quiz_provider.dart';
import 'package:f1_quiz_app/screens/quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isLoading = false;

  Future<void> _startQuiz() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // Delay untuk efek "Lights Out"
      await Future.delayed(const Duration(milliseconds: 800));

      final quizProvider = Provider.of<QuizProvider>(context, listen: false);
      final navigator = Navigator.of(context);

      quizProvider.setPlayerName(_nameController.text);

      // Ganti halaman
      navigator.pushReplacement(
        MaterialPageRoute(builder: (context) => const QuizScreen()),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        // Gunakan ConstrainedBox untuk tampilan lebih baik di layar lebar
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // MENGGUNAKAN GAMBAR ANDA
                // Pastikan Anda sudah menamai ulang file Anda menjadi 'f1_car_graphic.png'
                // dan meletakkannya di folder 'assets/images/'
                Image.asset(
                  'assets/images/f1logo.png',
                  height: size.width * 0.4, // Ukuran dinamis
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),
                Text(
                  'F1 Quiz Challenge',
                  style: theme.textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Masukkan Nama Anda',
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _startQuiz,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isLoading
                          ? theme.primaryColor // Merah saat loading
                          : Colors.red[600], // Abu-abu modern
                      foregroundColor: Colors.white,
                    ),
                    child: _isLoading
                        ? const Text('Lights Out and Away We Go!')
                        : const Text('Its Light Out And Away We Go'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}