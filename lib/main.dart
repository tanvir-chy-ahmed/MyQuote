import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myquote/core/constants/constants_strings.dart';
import 'package:myquote/data/local/database/models/hive_quote_model.dart';
import 'package:myquote/presentation/screens/add_quote/add_quote.dart';
import 'package:myquote/presentation/screens/explore_screen/explore_screen.dart';
import 'package:myquote/presentation/screens/favourites_screen/favourites_screen.dart';
import 'package:myquote/presentation/screens/home_screen/home_screen.dart';
import 'package:myquote/presentation/screens/settings_screen/settings_screen.dart';
import 'package:myquote/presentation/state_management/hive_provider.dart';
import 'package:myquote/presentation/state_management/layout_provider.dart';
import 'package:myquote/presentation/theme/colors.dart';
import 'package:provider/provider.dart';

void main() async {
  /// Hive Setup
  WidgetsFlutterBinding.ensureInitialized();

  // Correct initialization
  await Hive.initFlutter();

  // Register adapter once
  Hive.registerAdapter(QuotesListAdapter());

  // Open your box once
  await Hive.openBox<QuotesList>(AppString.DB_NAME);

  ///END

  /// Hides bottom nav bar completely
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HiveProvider()),
        ChangeNotifierProvider(create: (_) => LayoutProvider()),
      ],
      child: MainScreen(),
    ),
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          showPerformanceOverlay: true,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.blue),
          home: const RootScreen(),
        );
      },
    );
  }
}

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomeScreen(),
    ExploreScreen(),
    FavouritesScreen(),
    SettingsScreen(),
  ];

  @override
  void dispose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF6366f1),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddQuote()),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: MyColors.background,
        title: Text(
          "QuoteVault",
          style: GoogleFonts.daiBannaSil(
            color: MyColors.titleColor,
            fontSize: 30.sp,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<LayoutProvider>().toggleLayout();
            },
            icon: context.watch<LayoutProvider>().checkGrid
                ? Icon(Icons.grid_view, size: 28)
                : Icon(Icons.list_rounded, size: 28),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 8),
            child: !context.watch<LayoutProvider>().isSearching
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        context.read<LayoutProvider>().searching();
                      });
                    },
                    icon: Icon(Icons.search, size: 28),
                  )
                : IconButton(
                    onPressed: () {
                      setState(() {
                        context.read<LayoutProvider>().searching();
                      });
                    },
                    icon: Icon(Icons.clear_rounded, size: 28),
                  ),
          ),
        ],
      ),
      body: _pages[_currentIndex], // Auto changes when index changes
    );
  }
}




