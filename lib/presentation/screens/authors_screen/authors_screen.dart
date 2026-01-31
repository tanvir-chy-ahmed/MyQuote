import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myquote/presentation/screens/authors_screen/widgets/author_card.dart';


class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  final String defaultImg =
      "https://fastly.picsum.photos/id/765/400/300.jpg?hmac=fVYwJWGkpcDm6w5GZyPC5phkAWqjHB_SlPyOqCE3gSs";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      itemCount: 5, //qdb.quotes.length
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        // final data = ;qdb.quotes[index]
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: AuthorCard(
            author: "Del Carnegi", //data.author
            authorImg: "", //data.authorImg
            totalQuotes: 24,
            OnClick: () {},
          ),
        );
      },
    );
  }
}
