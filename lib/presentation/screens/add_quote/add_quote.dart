import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myquote/presentation/state_management/hive_provider.dart';
import 'package:provider/provider.dart';

import '../../../data/local/database/getbox.dart';
import '../../../data/local/database/models/hive_quote_model.dart';
import 'catagory_screen/content_screen.dart';
import 'catagory_screen/preview_screen.dart';
import 'catagory_screen/style_screen.dart';

class AddQuote extends StatefulWidget {
  const AddQuote({super.key});

  @override
  State<AddQuote> createState() => _AddQuoteState();
}

class _AddQuoteState extends State<AddQuote> {
  String? selectedCategory;
  TextEditingController quotectrl = TextEditingController();
  TextEditingController authorCtrl = TextEditingController();

  final box = Boxes.getData();
  bool isQEmpty = false;


  /// Add Quote
  Future<void> addQuote() async {
    final quoteName = quotectrl.text.trim();
    final authorName = authorCtrl.text.trim();

    final data = QuotesList(
      quoteText: quoteName,
      author: authorName,
      authorImg: "authorImg",
      category: selectedCategory!,
      quoteBGImg:
          "https://img.freepik.com/premium-photo/wallpaper-illustration-by-ai_1037184-131545.jpg",
    );

    await box.add(data);

    quotectrl.clear();
    authorCtrl.clear();
    setState(() {});
  }

  @override
  void dispose() {
    quotectrl.dispose();
    authorCtrl.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfafafa),
      appBar: AppBar(
        backgroundColor: Color(0xFFfafafa),
        centerTitle: true,
        title: Text(
          "Create  Quote",
          style: TextStyle(fontFamily: "kepler", fontSize: 22.sp),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () async {
                // Add your save functionality here
                // context.read<HiveProvider>().SaveData();

                final isEmpty =
                    quotectrl.text.trim().isEmpty ||
                    authorCtrl.text.trim().isEmpty;
                if (isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Must be fill two fields")),
                  );
                  return;
                }
                await addQuote();
                // Button click logic
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Successfully Saved Quote")),
                );
                Navigator.pop(context);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                alignment: Alignment.center,
                height: 35.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade400, Colors.blue.shade700],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade200.withOpacity(0.6),
                      offset: Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.save, color: Colors.white, size: 20.sp),
                    SizedBox(width: 8.w),
                    Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            SizedBox(height: 10.h),

            TabBar(
              labelColor: Color(0xFF6568f1),
              unselectedLabelColor: Colors.black.withAlpha(150),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 4, color: Color(0xFF6568f1)),
                insets: EdgeInsets.symmetric(horizontal: 16),
              ),
              dividerColor: Colors.transparent,
              indicatorWeight: 5,
              dividerHeight: 2,
              physics: BouncingScrollPhysics(),
              tabs: [Text("Content"), Text("Style"), Text("Preview")],
            ),

            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  ContentScreen(
                    quotectrl: quotectrl,
                    authorCtrl: authorCtrl,
                    onCategoryChanged: (value) {
                      selectedCategory = value; // store selected category
                    },
                  ),

                  StyleScreen(),
                  PreviewScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
