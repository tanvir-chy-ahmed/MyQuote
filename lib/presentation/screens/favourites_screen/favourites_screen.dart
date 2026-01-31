import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../state_management/hive_provider.dart';
import '../../state_management/layout_provider.dart';
import '../home_screen/widgets/single_linear_quote.dart';
import 'package:provider/provider.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();

}

class _FavouritesScreenState extends State<FavouritesScreen> {
  final String defaultImg =
      "https://fastly.picsum.photos/id/765/400/300.jpg?hmac=fVYwJWGkpcDm6w5GZyPC5phkAWqjHB_SlPyOqCE3gSs";


  @override
  Widget build(BuildContext context) {
    final provider2 = context.watch<HiveProvider>();
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      itemCount: 5,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        // final data = qdb.quotes[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: SingleQuote(
            onClick: (){
              context.read<LayoutProvider>().toggleFavourite(index);
              },
            quoteText: "hfjhdklf",
            author: "data.author",
            category: "data.category",
            imgUrl: defaultImg,
            isFavorurite: false, onDelete: () {
            // provider2.delete(, context)
          },
          ),
        );
      },
    );
  }
}
