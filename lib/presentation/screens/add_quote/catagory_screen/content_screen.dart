import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentScreen extends StatefulWidget {
  final TextEditingController quotectrl;
  final TextEditingController authorCtrl;
  final Function(String?) onCategoryChanged; // new callback

  const ContentScreen({
    super.key,
    required this.quotectrl,
    required this.authorCtrl,
    required this.onCategoryChanged,
  });


  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {

  String ?_selectedItem = 'Motivational Quotes';




  List<String> categoryList = [
    'Motivational Quotes',
    'Life Quotes',
    'Success Quotes',
    'PTQ',
    'Spiritual Quotes',
    'Confidence Quotes',
    'Dreams and Goals',
  ];


  int _lettercount = 0;
  bool isOverflow = false;

  @override
  Widget build(BuildContext context) {
    void _updatecount(String text) {
      setState(() {
        _lettercount = text.length;
        if (_lettercount > 500) {
          isOverflow = true;
        } else {
          isOverflow = false;
        }
      });
    }

    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.h,
              width: double.infinity,

              child: Card(
                color: Colors.white,
                elevation: 6,
                child: Expanded(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.top,
                    expands: true,
                    maxLines: null,

                    controller: widget.quotectrl,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: Color(0xFF6568f1)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                      ),
                      hintText: 'Enter Your quote here...',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0.5,
                      ),
                      hintTextDirection: TextDirection.ltr,
                      filled: true,
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      alignLabelWithHint: true,
                    ),
                    style: TextStyle(fontSize: 16),
                    textInputAction: TextInputAction.search,
                    keyboardType: TextInputType.multiline,
                    autocorrect: true,
                    enableSuggestions: true,
                    cursorColor: Color(0xFF6568f1),
                    onChanged: (value) {
                      _updatecount(value);
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "${_lettercount.toString()}/500",
                    style: TextStyle(
                      color: isOverflow ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              height: 49.h,
              width: double.infinity,

              child: Card(
                color: Colors.white,
                elevation: 6,
                child: Expanded(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.top,
                    maxLines: 1,

                    controller: widget.authorCtrl,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: Color(0xFF6568f1)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                      ),
                      hintText: 'Author Name',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0.5,
                      ),
                      hintTextDirection: TextDirection.ltr,
                      filled: true,
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      alignLabelWithHint: true,
                    ),
                    style: TextStyle(fontSize: 16),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    autocorrect: true,
                    enableSuggestions: true,
                    cursorColor: Color(0xFF6568f1),
                    onChanged: (value) {
                      _updatecount(value);
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              alignment: Alignment.center,
              width:
                  MediaQuery.of(context).size.width * 0.9, // responsive width
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // rounded corners
                ),
                elevation: 8,
                // slightly higher elevation for depth
                color: Colors.white,
                shadowColor: Colors.black26,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Add Background Image",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text("Choose from Gallery"),
                      leading: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Color(0xFFefeffe),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Icon(Icons.photo, color: Color(0xFF6568f1)),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Text("Category", style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 1.2,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white,
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: _selectedItem,
                    hint: const Center(
                      child: Text(
                        "Select a Category",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                    dropdownColor: Colors.white,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 30,
                      color: Colors.grey,
                    ),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    underline: const SizedBox(),
                    // removes underline
                    items: categoryList.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedItem = value;
                      });
                      widget.onCategoryChanged(value); //notify parent
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
