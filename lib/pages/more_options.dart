import 'package:flutter/material.dart';
import 'package:flutter_ui_10/components/shoes_info.dart';
import 'package:flutter_ui_10/pages/shoe_brand.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreOptions extends StatelessWidget {
  const MoreOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "More",
            style: GoogleFonts.poppins(
                fontSize: 25, color: const Color.fromARGB(255, 55, 55, 55)),
          ),
          ShoeBrand(
            shoes: nike,
          ),
        ],
      ),
    );
  }
}
