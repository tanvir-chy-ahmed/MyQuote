// 🔍 Search Bar

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SearchBar extends StatefulWidget {
  TextEditingController searchController;
  FocusNode searchFocusNode;
  SearchBar({super.key,required this.searchController,required this.searchFocusNode});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 60.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Color(0xFFf4f4f4)),
      child: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: MediaQuery.of(context).size.width / 1.1,
        child: TextField(
          controller: widget.searchController,
          focusNode: widget.searchFocusNode,
          decoration: InputDecoration(
            hintText: 'Search quotes',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black.withAlpha(120),
            ),
            suffixIcon: widget.searchController.text.isNotEmpty
                ? IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                widget.searchController.clear();
                setState(() {}); // refresh UI
              },
            )
                : null,
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
          ),
          style: TextStyle(fontSize: 16),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.text,
          autocorrect: true,
          enableSuggestions: true,
          cursorColor: Colors.blue,
          onChanged: (value) => setState(() {}),
          onSubmitted: (value) => print("Search: $value"),
        ),
      ),
    );
  }
}





// context.read<LayoutProvider>().isSearching
//     ? DefaultTabController(
//         length: 4,
//         child: Column(
//           children: [
//             // 🔍 Search Bar
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: 60.h,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(color: Color(0xFFf4f4f4)),
//               child: Container(
//                 alignment: Alignment.center,
//                 height: double.infinity,
//                 width: MediaQuery.of(context).size.width / 1.1,
//                 child: TextField(
//                   controller: searchController,
//                   focusNode: searchFocusNode,
//                   decoration: InputDecoration(
//                     hintText: 'Search quotes',
//                     hintStyle: TextStyle(color: Colors.grey),
//                     prefixIcon: Icon(
//                       Icons.search,
//                       color: Colors.black.withAlpha(120),
//                     ),
//                     suffixIcon: searchController.text.isNotEmpty
//                         ? IconButton(
//                             icon: Icon(Icons.clear),
//                             onPressed: () {
//                               searchController.clear();
//                               setState(() {}); // refresh UI
//                             },
//                           )
//                         : null,
//                     filled: true,
//                     fillColor: Colors.white,
//                     contentPadding: EdgeInsets.symmetric(
//                       horizontal: 16,
//                       vertical: 12,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.r),
//                       borderSide: BorderSide(color: Colors.grey.shade400),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.r),
//                       borderSide: BorderSide(color: Colors.grey.shade400),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.r),
//                       borderSide: BorderSide(color: Colors.grey.shade400),
//                     ),
//                   ),
//                   style: TextStyle(fontSize: 16),
//                   textInputAction: TextInputAction.search,
//                   keyboardType: TextInputType.text,
//                   autocorrect: true,
//                   enableSuggestions: true,
//                   cursorColor: Colors.blue,
//                   onChanged: (value) => setState(() {}),
//                   onSubmitted: (value) => print("Search: $value"),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: 10.h),
//
//             // 🟦 Tab Section
//             TabBar(
//               labelColor: Color(0xFF6568f1),
//               unselectedLabelColor: Colors.black.withAlpha(150),
//               indicator: UnderlineTabIndicator(
//                 borderSide: BorderSide(
//                   width: 4,
//                   color: Color(0xFF6568f1),
//                 ),
//                 insets: EdgeInsets.symmetric(horizontal: 16),
//               ),
//               dividerColor: Colors.transparent,
//               indicatorWeight: 5,
//               dividerHeight: 2,
//               physics: BouncingScrollPhysics(),
//               tabs: [
//                 Column(children: [Icon(Icons.format_quote), Text("All")]),
//                 Column(
//                   children: [Icon(Icons.favorite), Text("Favorites")],
//                 ),
//                 Column(children: [Icon(Icons.image), Text("Images")]),
//                 Column(
//                   children: [Icon(Icons.settings), Text("Settings")],
//                 ),
//               ],
//             ),
//
//             // ✅ Make TabBarView take remaining screen height
//             Expanded(
//               child: TabBarView(
//                 physics: BouncingScrollPhysics(),
//                 children: [
//                   HomeScreen(),
//                   FavouritesScreen(),
//                   ImagesScreen(),
//                   SettingsScreen(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       )
//     // 🔸 When search is off
//     : DefaultTabController(
//         length: 4,
//         child: Column(
//           children: [
//             SizedBox(height: 10.h),
//
//             TabBar(
//               labelColor: Color(0xFF6568f1),
//               unselectedLabelColor: Colors.black.withAlpha(150),
//               indicator: UnderlineTabIndicator(
//                 borderSide: BorderSide(
//                   width: 4,
//                   color: Color(0xFF6568f1),
//                 ),
//                 insets: EdgeInsets.symmetric(horizontal: 16),
//               ),
//               dividerColor: Colors.transparent,
//               indicatorWeight: 5,
//               dividerHeight: 2,
//               physics: BouncingScrollPhysics(),
//               tabs: [
//                 Column(
//                   children: [Icon(Icons.format_quote), Text("Quotes")],
//                 ),
//                 Column(
//                   children: [Icon(Icons.favorite), Text("Favorites")],
//                 ),
//                 Column(children: [Icon(Icons.person), Text("Authors")]),
//                 Column(
//                   children: [Icon(Icons.settings), Text("Settings")],
//                 ),
//               ],
//             ),
//
//             Expanded(
//               child: TabBarView(
//                 physics: BouncingScrollPhysics(),
//                 children: [
//                   HomeScreen(),
//                   FavouritesScreen(),
//                   ImagesScreen(),
//                   SettingsScreen(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),