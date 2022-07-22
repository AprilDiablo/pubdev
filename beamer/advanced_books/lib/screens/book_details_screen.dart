import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class BookDetailsScreen extends StatelessWidget {
  BookDetailsScreen({required this.book, required this.title});

  final Map<String, dynamic> book;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Author: ${book['author']}'),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () =>
                  context.beamToNamed('/books/${book['id']}/genres'),
              child: const Text('See genres'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => context.beamToNamed('/books/${book['id']}/buy'),
              child: const Text('Buy'),
            )
          ],
        ),
      ),
    );
  }
}
