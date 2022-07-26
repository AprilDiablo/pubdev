import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class BookGenresScreen extends StatelessWidget {
  const BookGenresScreen({required this.book, required this.title, Key? key})
      : super(key: key);
  final Map<String, dynamic> book;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          children: List<Widget>.from(
            book['genres'].map(
              (genre) => ListTile(
                onTap: () => context.beamToNamed('/books?genre=$genre'),
                title: Text(genre),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
