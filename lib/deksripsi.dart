
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:canteen/menu.dart';


class DetailPage extends StatelessWidget {
  final   Menu menu;

  DetailPage({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menu.name ?? 'Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/${menu.name}.jpeg',
                height: 200,
              ),
            ),
            SizedBox(height: 16),
            Text(
              menu.name ?? '',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Price: ${menu.price ?? ''}',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            Text(
              menu.description ?? 'No description available',
              style: GoogleFonts.poppins(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
