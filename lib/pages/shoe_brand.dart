import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../components/shoes_info.dart';

// ignore: must_be_immutable
class ShoeBrand extends StatefulWidget {
  ShoeBrand({super.key, required this.shoes});
  List<ShoeInfo> shoes;

  @override
  State<ShoeBrand> createState() => _ShoeBrandState();
}

class _ShoeBrandState extends State<ShoeBrand> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.shoes.length,
        itemBuilder: (context, index) {
          var shoe = widget.shoes[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 300,
              width: 250,
              child: Stack(
                children: [
                  SizedBox(
                    height: 300,
                    width: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        shoe.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                              right: Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                shoe.name.toUpperCase(),
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    shoe.isLiked = !shoe.isLiked;
                                  });
                                },
                                icon: shoe.isLiked
                                    ? const Icon(
                                        Ionicons.heart_circle_outline,
                                        size: 40,
                                      )
                                    : const Icon(
                                        Ionicons.heart_outline,
                                        size: 40,
                                      ),
                                color: shoe.isLiked
                                    ? Colors.redAccent
                                    : Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              "\$${shoe.price}",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


// return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: [
    //       ...widget.shoes.map((shoe) {
    //         return Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: SizedBox(
    //             height: 300,
    //             width: 250,
    //             child: Stack(
    //               children: [
    //                 SizedBox(
    //                   height: 300,
    //                   width: 250,
    //                   child: ClipRRect(
    //                     borderRadius: BorderRadius.circular(10),
    //                     child: Image.asset(
    //                       shoe.image,
    //                       fit: BoxFit.cover,
    //                     ),
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                         children: [
    //                           Text(
    //                             shoe.name.toUpperCase(),
    //                             style: GoogleFonts.poppins(
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //                           IconButton(
    //                             onPressed: () {
    //                               setState(() {
    //                                 isLiked = !isLiked;
    //                               });
    //                             },
    //                             icon: isLiked
    //                                 ? Icon(
    //                                     Ionicons.heart_circle_outline,
    //                                     size: 40,
    //                                   )
    //                                 : Icon(Ionicons.heart_outline),
    //                             color:
    //                                 isLiked ? Colors.redAccent : Colors.white,
    //                           ),
    //                         ],
    //                       ),
    //                       Container(
    //                         decoration: BoxDecoration(
    //                             color: Colors.black87,
    //                             borderRadius: BorderRadius.circular(15)),
    //                         child: Padding(
    //                           padding: const EdgeInsets.all(3.0),
    //                           child: Text(
    //                             "\$${shoe.price}",
    //                             style: GoogleFonts.poppins(
    //                               color: Colors.white,
    //                               fontSize: 30,
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         );
    //       }),
    //     ],
    //   ),
    // );