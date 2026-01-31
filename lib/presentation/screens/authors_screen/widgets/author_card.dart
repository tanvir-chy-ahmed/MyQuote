import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myquote/presentation/screens/authors_screen/widgets/shimmer_author.dart';

import '../../../state_management/layout_provider.dart';

class AuthorCard extends StatelessWidget {
  String author;
  String authorImg;
  int totalQuotes;
  VoidCallback OnClick;


  AuthorCard({
    super.key,
    required this.author,
    required this.authorImg,
    required this.totalQuotes,
    required this.OnClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      // Set the card background color here
      elevation: 6,
      // Set the elevation (shadow)
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      clipBehavior: Clip.hardEdge,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),

        // Leading circular author image
        leading: ClipOval(
          child: CachedNetworkImage(
            width: 50.w,
            height: 50.w,
            memCacheWidth: 50,
            memCacheHeight: 50,
            fit: BoxFit.cover,
            imageUrl: authorImg,
            placeholder: (context, url) => ShimmerAuthor(),
            errorWidget: (context, url, error) => Icon(Icons.person, size: 50),
          ),
        ),

        // Author name and quote count
        title: Text(
          author,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        subtitle: Text(
          " ${totalQuotes} Quotes",
          style: GoogleFonts.roboto(color: Colors.grey[600], fontSize: 14.sp),
        ),

        // Trailing icons
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: OnClick,
              icon: Icon(

                  Icons.favorite_outline

                  , color: Colors.redAccent),
            ),

            SizedBox(width: 8.w),
            Icon(Icons.chevron_right, color: Colors.grey, size: 30),
          ],
        ),
      ),
    );
  }
}
