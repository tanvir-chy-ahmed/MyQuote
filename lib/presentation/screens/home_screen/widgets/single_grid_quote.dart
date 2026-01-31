import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'shimmer_grid.dart'; // your shimmer placeholder

class SingleGridQuote extends StatelessWidget {
  final String quoteText;
  final String author;
  final String category;
  final String imgUrl;

  const SingleGridQuote({
    super.key,
    required this.quoteText,
    required this.author,
    required this.imgUrl,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      clipBehavior: Clip.hardEdge,
      elevation: 3,
      child: Stack(
        children: [
          // Image background
          CachedNetworkImage(
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
            imageUrl: imgUrl,
            placeholder: (context, url) => Center(child: ShimmerGrid()),
            errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.broken_image)),
          ),
          // Gradient overlay
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.25),
                  Colors.black.withOpacity(0.6),
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // prevents vertical overflow
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Quote Text
                Text(
                  quoteText,
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.robotoSlab(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 20.h,),



                // Author and category + icons
                Text(
                  author,
                  maxLines: 1,

                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
