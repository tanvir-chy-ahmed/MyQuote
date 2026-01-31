import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myquote/presentation/screens/home_screen/widgets/shimmer_loading.dart';
import 'package:share_plus/share_plus.dart';

class SingleQuote extends StatelessWidget {
  final String quoteText;
  final String author;
  final String category;
  final String imgUrl;
  final bool isFavorurite;
  final VoidCallback onClick;
  final VoidCallback onDelete;

  const SingleQuote({
    super.key,
    required this.quoteText,
    required this.author,
    required this.imgUrl,
    required this.category,
    required this.onClick,
    required this.onDelete,
    required this.isFavorurite,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            CachedNetworkImage(
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl: imgUrl,
              placeholder: (context, url) => Center(child: ShimmerLoading()),
              errorWidget: (context, url, error) =>
                  const Center(child: Icon(Icons.broken_image)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\t\t\t" + quoteText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.robotoSlab(
                      fontSize: 16.sp,

                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\t\t\t" + author,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(

                            "\t\t\t" + category,
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF6568F1),
                            ),
                          ),
                          Row(
                            spacing: 1,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Share.share(
                                    "Quote: $quoteText\n Author: $author",
                                  );
                                },
                                icon: Icon(
                                  Icons.share_outlined,
                                  color: Colors.white,
                                  size: 20.sp,
                                ),
                              ),
                              IconButton(
                                onPressed: onClick,
                                icon: Icon(
                                  isFavorurite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: isFavorurite
                                      ? Colors.red
                                      : Colors.grey,
                                  size: 20.sp,
                                ),
                              ),
                              IconButton(
                                onPressed: () async {
                                  onDelete();
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.redAccent,
                                  size: 20.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
