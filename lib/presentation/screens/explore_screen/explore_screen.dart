import 'package:flutter/material.dart';
import 'package:myquote/presentation/screens/explore_screen/widgets/single_category.dart';
import 'package:myquote/presentation/state_management/layout_provider.dart';
import 'package:provider/provider.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = context.read<LayoutProvider>();

    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.only(left: 16, right: 16),
        itemCount: provider.categoryList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.6,
        ),
        itemBuilder: (_, index) {

          return SingleCategory(
            categoryName: provider.categoryList[index],
            bgimg: provider.categoryImg[index],
            onClick: () {},
            icon: provider.categoryIcon[index],
          );
        },
      ),
    );
  }
}
