import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const NavigationTextButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: GoogleFonts.balooDa2(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
        ));
  }
}
