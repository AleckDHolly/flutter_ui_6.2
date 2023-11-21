import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import 'more_options.dart';
import 'shoe_options.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discover",
          style: GoogleFonts.poppins(
            fontSize: 35,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Ionicons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Ionicons.notifications,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ShoeOptions(),
              MoreOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
