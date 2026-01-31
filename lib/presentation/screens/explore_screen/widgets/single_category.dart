import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleCategory extends StatelessWidget {
  String categoryName;
  String bgimg;
  IconData icon;
  VoidCallback onClick;

  SingleCategory({
    super.key,
    required this.categoryName,
    required this.bgimg,
    required this.icon,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6, // controls card shape (responsive)
      child: GestureDetector(
        onTap: onClick,
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: CachedNetworkImage(
                  imageUrl:
                  bgimg,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Dark overlay (optional but recommended for readability)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.45),
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),

            // Foreground Content
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final iconSize = constraints.maxWidth * 0.22;
                  final fontSize = constraints.maxWidth * 0.12;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categoryName,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: iconSize,
                          width: iconSize,
                          decoration: BoxDecoration(
                            color: const Color(0xFF373636),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Icon(
                            icon ,
                            color: Colors.white,
                            size: iconSize * 0.6,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        )

      ),
    );
  }
}
