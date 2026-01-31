import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myquote/data/local/database/getbox.dart';
import 'package:myquote/presentation/screens/details_screen/details_screen.dart';
import 'package:myquote/presentation/screens/home_screen/widgets/single_grid_quote.dart';
import 'package:myquote/presentation/state_management/hive_provider.dart';
import 'package:myquote/presentation/state_management/layout_provider.dart';
import 'package:provider/provider.dart';

import '../../../data/local/database/models/hive_quote_model.dart';
import 'widgets/single_linear_quote.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var box = Boxes.getData();

  @override
  Widget build(BuildContext context) {
    final isGrid = context.watch<LayoutProvider>().checkGrid;
    final isSearching = context.read<LayoutProvider>().isSearching;

    return isGrid
        ? ValueListenableBuilder(
            valueListenable: box.listenable(),
            builder: (context, Box boxData, _) {
              final quotes = boxData.values.toList().cast<QuotesList>();

              if (quotes.isEmpty) {
                return Center(
                  child: Text(
                    "No Quotes are avaiable",
                    style: TextStyle(fontSize: 18.sp),
                  ),
                );
              }

              return GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                itemCount: quotes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of columns
                  childAspectRatio: 0.8, // width / height
                  mainAxisSpacing: 1.h,
                  crossAxisSpacing: 10.w,
                ),
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = quotes[index];
                  final quotebgimgtemp = context.read<LayoutProvider>().categoryImg;
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            quote: item.quoteText,
                            category: item.category,
                            author: item.author,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: SingleGridQuote(
                        quoteText: item.quoteText,
                        author: item.author,
                        category: item.category,
                        imgUrl: quotebgimgtemp[index], // Using a default image
                      ),
                    ),
                  );
                },
              );
            },
          )
        : ValueListenableBuilder(
            valueListenable: box.listenable(),
            builder: (context, Box boxData, _) {
              final quotes = boxData.values.toList().cast<QuotesList>();
              if (quotes.isEmpty) {
                return Center(
                  child: Text(
                    "No Quotes are avaiable",
                    style: TextStyle(fontSize: 18.sp),
                  ),
                );
              }
              return ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                itemCount: quotes.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = quotes[index];
                  final quotebgimgtemp = context.read<LayoutProvider>().categoryImg;
                  return Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: GestureDetector(
                      onTap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              quote: item.quoteText,
                              category: item.category,
                              author: item.author,
                            ),
                          ),
                        );
                      },
                      child: SingleQuote(
                        quoteText: item.quoteText,
                        author: item.author,
                        category: item.category,
                        imgUrl: quotebgimgtemp[index],
                        onClick: () {
                          context.read<LayoutProvider>().toggleFavourite(index);
                        },
                        isFavorurite: item.isFvrt,
                        onDelete: () {
                          final key = boxData.keyAt(index);
                          context.read<HiveProvider>().delete(key, context);
                        },
                      ),
                    ),
                  );
                },
              );
            },
          );
  }
}
