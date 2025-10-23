import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String ocrText;

  const ResultScreen({super.key, required this.ocrText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil OCR')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SelectableText(
            ocrText.isEmpty
                ? 'Tidak ada teks ditemukan.'
                : ocrText, // Fungsi replaceAll() telah dihapus
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton( // FAB ditambahkan
        onPressed: () {
          // Kembali ke layar sebelumnya (biasanya HomeScreen)
          Navigator.pop(context); 
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}