import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/shoes_info.dart';
import 'shoe_brand.dart';

class ShoeOptions extends StatefulWidget {
  const ShoeOptions({super.key});

  @override
  State<ShoeOptions> createState() => _ShoeOptionsState();
}

class _ShoeOptionsState extends State<ShoeOptions> {
  int selectedButton = 0;

  List<String> shoes = [
    "Adidas",
    "Nike",
    "Jordan",
    "Puma",
    "Converse",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...shoes.map(
                (shoe) => Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                    style: const ButtonStyle(
                        splashFactory: NoSplash.splashFactory),
                    onPressed: () {
                      setState(() {
                        selectedButton = shoes.indexOf(shoe);
                      });
                    },
                    child: Text(
                      shoe,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: selectedButton == shoes.indexOf(shoe)
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        switch (selectedButton) {
          0 => ShoeBrand(shoes: adidas),
          1 => ShoeBrand(shoes: nike),
          2 => ShoeBrand(shoes: jordan),
          3 => ShoeBrand(shoes: puma),
          4 => ShoeBrand(shoes: converse),
          _ => ShoeBrand(shoes: adidas),
        }
      ],
    );
  }
}
