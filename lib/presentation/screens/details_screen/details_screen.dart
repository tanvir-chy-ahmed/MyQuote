import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myquote/presentation/theme/colors.dart';

class DetailsScreen extends StatefulWidget {
  String quote;
  String author;
  String category;

  DetailsScreen({
    super.key,
    required this.quote,
    required this.category,
    required this.author,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool showBars = true;

  void toggleBars() {
    setState(() => showBars = !showBars);

    if (showBars) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: GestureDetector(
        onTap: toggleBars,
        child: Stack(
          children: [
            // Main content
            // Full-screen centered background image
            Positioned.fill(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl:
                          "https://i.pinimg.com/1200x/e4/67/3e/e4673e4712b5738648bbc33ba906978a.jpg",
                    ),
                  ),

                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 20,

                    child: Container(
                      padding: EdgeInsets.all(16),
                      // color: Color(0xFF202163),
                      child: Column(
                        spacing: 20,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.quote,
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          Text(
                            "- " + widget.author,
                            style: GoogleFonts.dancingScript(
                              color: Colors.white,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Top AppBar overlay
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                opacity: showBars ? 1.0 : 0.0,
                duration: Duration(milliseconds: 300),
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25), //Top bar background
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25), // Shadow color
                        offset: Offset(0, 4), // x, y offset
                        blurRadius: 6, // blur effect
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.white.withOpacity(0.25),
                        ),
                      ),

                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border_sharp,
                          color: Colors.white.withOpacity(0.25),
                        ),
                        onPressed: () {},
                      ),

                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white.withOpacity(0.25),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // BottomBar overlay
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: AnimatedOpacity(
                  opacity: showBars ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 300),
                  child: IgnorePointer(
                    ignoring: !showBars,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        // subtle glass tint
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.15), // thin border
                          width: 1,
                        ),
                      ),

                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.color_lens),
                            color: Colors.grey,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.download),
                            color: Colors.grey,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share),
                            color: Colors.grey,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                            color: Colors.grey,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: CachedNetworkImage(
                              imageUrl:
                                  "https://cdn-icons-png.flaticon.com/128/17849/17849184.png",
                              height: 25.h,
                              width: 25.w,
                              color: Colors.white.withOpacity(0.25),
                            ),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // FloatingActionButton overlay (fixed)
            // if (showBars)
            //   Positioned(
            //     bottom: 130.h, // space above bottom bar
            //     left: 20.w,
            //     right: 20.w,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Container(
            //           padding: EdgeInsets.only(left: 10.w, right: 10.w),
            //           width: 115.w,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(12.r),
            //             color: Colors.grey,
            //           ),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //               IconButton(
            //                 onPressed: () {},
            //                 icon: Icon(
            //                   Icons.grid_view_rounded,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //               Text(
            //                 "Topics",
            //                 style: TextStyle(
            //                   fontSize: 15.sp,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //
            //         Container(
            //           width: 50.w,
            //           height: 50.h,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(12.r),
            //             color: Colors.grey,
            //           ),
            //           child: IconButton(
            //             onPressed: () {},
            //             icon: Icon(Icons.color_lens_outlined),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
