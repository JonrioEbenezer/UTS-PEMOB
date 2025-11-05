import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AnswerButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: SizedBox(
        width: double.infinity,
        // Tombol ElevatedButton untuk tampilan lebih modern
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            // Gunakan warna surface (putih/abu-abu gelap)
            backgroundColor: theme.colorScheme.surface,
            // Gunakan warna teks standar
            foregroundColor: theme.colorScheme.onSurface,
            padding: const EdgeInsets.symmetric(vertical: 16),
            // Beri border halus untuk memisahkan dari background
            side: BorderSide(
              color: theme.dividerColor,
              width: 1,
            ),
            elevation: 1.0, // Bayangan sangat tipis
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}