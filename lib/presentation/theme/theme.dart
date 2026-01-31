// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// /// A class that contains all theme configurations for the application.
// /// Implements Contemplative Minimalism design with Serene Spectrum color palette
// /// optimized for quote collection and personal productivity applications.
// class AppTheme {
//   AppTheme._();
//
//   // Serene Spectrum Color Palette - Violet-Blue-Teal Progression
//   static const Color primary = Color(0xFF6366F1); // Indigo-600
//   static const Color secondary = Color(0xFF8B5CF6); // Violet-500
//   static const Color tertiary = Color(0xFF06B6D4); // Cyan-500
//   static const Color background = Color(0xFFFAFAFA); // Gray-50
//   static const Color surface = Color(0xFFFFFFFF); // Pure White
//   static const Color onSurface = Color(0xFF1F2937); // Gray-800
//   static const Color onBackground = Color(0xFF374151); // Gray-700
//   static const Color outline = Color(0xFFE5E7EB); // Gray-200
//   static const Color surfaceVariant = Color(0xFFF9FAFB); // Gray-25
//   static const Color error = Color(0xFFEF4444); // Red-500
//
//   // Dark theme colors
//   static const Color primaryDark = Color(0xFF818CF8); // Indigo-400
//   static const Color secondaryDark = Color(0xFFA78BFA); // Violet-400
//   static const Color tertiaryDark = Color(0xFF22D3EE); // Cyan-400
//   static const Color backgroundDark = Color(0xFF111827); // Gray-900
//   static const Color surfaceDark = Color(0xFF1F2937); // Gray-800
//   static const Color onSurfaceDark = Color(0xFFF9FAFB); // Gray-25
//   static const Color onBackgroundDark = Color(0xFFE5E7EB); // Gray-200
//   static const Color outlineDark = Color(0xFF374151); // Gray-700
//   static const Color surfaceVariantDark = Color(0xFF374151); // Gray-700
//   static const Color errorDark = Color(0xFFF87171); // Red-400
//
//   // Additional semantic colors
//   static const Color onPrimary = Color(0xFFFFFFFF);
//   static const Color onSecondary = Color(0xFFFFFFFF);
//   static const Color onTertiary = Color(0xFFFFFFFF);
//   static const Color onError = Color(0xFFFFFFFF);
//
//   /// Light theme optimized for extended mobile reading sessions
//   static ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     useMaterial3: true,
//     colorScheme: ColorScheme(
//       brightness: Brightness.light,
//       primary: primary,
//       onPrimary: onPrimary,
//       primaryContainer: primary.withValues(alpha: 0.1),
//       onPrimaryContainer: primary,
//       secondary: secondary,
//       onSecondary: onSecondary,
//       secondaryContainer: secondary.withValues(alpha: 0.1),
//       onSecondaryContainer: secondary,
//       tertiary: tertiary,
//       onTertiary: onTertiary,
//       tertiaryContainer: tertiary.withValues(alpha: 0.1),
//       onTertiaryContainer: tertiary,
//       error: error,
//       onError: onError,
//       errorContainer: error.withValues(alpha: 0.1),
//       onErrorContainer: error,
//       surface: surface,
//       onSurface: onSurface,
//       onSurfaceVariant: onBackground,
//       outline: outline,
//       outlineVariant: outline.withValues(alpha: 0.5),
//       shadow: Colors.black.withValues(alpha: 0.1),
//       scrim: Colors.black.withValues(alpha: 0.5),
//       inverseSurface: onSurface,
//       onInverseSurface: surface,
//       inversePrimary: primaryDark,
//       surfaceTint: primary,
//     ),
//     scaffoldBackgroundColor: background,
//
//     // AppBar theme for contemplative minimalism
//     appBarTheme: AppBarTheme(
//       backgroundColor: surface,
//       foregroundColor: onSurface,
//       elevation: 0,
//       scrolledUnderElevation: 2,
//       shadowColor: Colors.black.withValues(alpha: 0.1),
//       surfaceTintColor: surface,
//       titleTextStyle: GoogleFonts.playfairDisplay(
//         fontSize: 20,
//         fontWeight: FontWeight.w600,
//         color: onSurface,
//         letterSpacing: 0.15.sp
//       ),
//       iconTheme: IconThemeData(color: onSurface, size: 24),
//       actionsIconTheme: IconThemeData(color: onSurface, size: 24),
//       centerTitle: true,
//     ),
//
//
//
//     // Bottom navigation for gesture-first navigation
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: surface,
//       selectedItemColor: primary,
//       unselectedItemColor: onBackground,
//       type: BottomNavigationBarType.fixed,
//       elevation: 8,
//       selectedLabelStyle: GoogleFonts.poppins(
//         fontSize: 12,
//         fontWeight: FontWeight.w500,
//       ),
//       unselectedLabelStyle: GoogleFonts.poppins(
//         fontSize: 12,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//
//     // FloatingActionButton with contextual actions
//     floatingActionButtonTheme: FloatingActionButtonThemeData(
//       backgroundColor: primary,
//       foregroundColor: onPrimary,
//       elevation: 6,
//       focusElevation: 8,
//       hoverElevation: 8,
//       highlightElevation: 12,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//     ),
//
//     // Button themes with micro-feedback systems
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: primary,
//         foregroundColor: onPrimary,
//         elevation: 2,
//         shadowColor: Colors.black.withValues(alpha: 0.1),
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         textStyle: GoogleFonts.poppins(
//           fontSize: 14.sp,
//           fontWeight: FontWeight.w500,
//           letterSpacing: 0.1.sp
//         ),
//       ),
//     ),
//
//     outlinedButtonTheme: OutlinedButtonThemeData(
//       style: OutlinedButton.styleFrom(
//         foregroundColor: primary,
//         side: BorderSide(color: primary, width: 1),
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         textStyle: GoogleFonts.poppins(
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//           letterSpacing: 0.1.sp
//         ),
//       ),
//     ),
//
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(
//         foregroundColor: primary,
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         textStyle: GoogleFonts.poppins(
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//           letterSpacing: 0.1.sp
//         ),
//       ),
//     ),
//
//     // Typography with spatial typography principles
//     textTheme: _buildLightTextTheme(),
//
//     // Input decoration for minimal borders
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: surface,
//       contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: outline, width: 1),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: outline, width: 1),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: primary, width: 2),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: error, width: 1),
//       ),
//       focusedErrorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: error, width: 2),
//       ),
//       labelStyle: GoogleFonts.poppins(
//         fontSize: 14,
//         fontWeight: FontWeight.w400,
//         color: onBackground,
//       ),
//       hintStyle: GoogleFonts.poppins(
//         fontSize: 14,
//         fontWeight: FontWeight.w400,
//         color: onBackground.withValues(alpha: 0.6),
//       ),
//     ),
//
//     // Switch theme
//     switchTheme: SwitchThemeData(
//       thumbColor: WidgetStateProperty.resolveWith((states) {
//         if (states.contains(WidgetState.selected)) return primary;
//         return outline;
//       }),
//       trackColor: WidgetStateProperty.resolveWith((states) {
//         if (states.contains(WidgetState.selected))
//           return primary.withValues(alpha: 0.3);
//         return outline.withValues(alpha: 0.3);
//       }),
//     ),
//
//     // Checkbox theme
//     checkboxTheme: CheckboxThemeData(
//       fillColor: WidgetStateProperty.resolveWith((states) {
//         if (states.contains(WidgetState.selected)) return primary;
//         return Colors.transparent;
//       }),
//       checkColor: WidgetStateProperty.all(onPrimary),
//       side: BorderSide(color: outline, width: 2),
//     ),
//
//     // Progress indicator theme
//     progressIndicatorTheme: ProgressIndicatorThemeData(
//       color: primary,
//       linearTrackColor: outline,
//       circularTrackColor: outline,
//     ),
//
//     // Tab bar theme
//     // tabBarTheme: TabBarTheme(
//     //   labelColor: primary,
//     //   unselectedLabelColor: onBackground,
//     //   indicatorColor: primary,
//     //   indicatorSize: TabBarIndicatorSize.label,
//     //   labelStyle: GoogleFonts.poppins(
//     //     fontSize: 14,
//     //     fontWeight: FontWeight.w500,
//     //   ),
//     //   unselectedLabelStyle: GoogleFonts.poppins(
//     //     fontSize: 14,
//     //     fontWeight: FontWeight.w400,
//     //   ),
//     // ),
//
//     // Tooltip theme
//     tooltipTheme: TooltipThemeData(
//       decoration: BoxDecoration(
//         color: onSurface.withValues(alpha: 0.9),
//         borderRadius: BorderRadius.circular(4),
//       ),
//       textStyle: GoogleFonts.poppins(
//         color: surface,
//         fontSize: 12,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//
//     // SnackBar theme
//     snackBarTheme: SnackBarThemeData(
//       backgroundColor: onSurface,
//       contentTextStyle: GoogleFonts.poppins(
//         color: surface,
//         fontSize: 14,
//         fontWeight: FontWeight.w400,
//       ),
//       actionTextColor: tertiary,
//       behavior: SnackBarBehavior.floating,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//     ),
//
//     // Divider theme
//     dividerTheme: DividerThemeData(
//       color: outline,
//       thickness: 1,
//       space: 1,
//     ),
//   );
//
//   /// Dark theme for low-light reading conditions
//   static ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     useMaterial3: true,
//     colorScheme: ColorScheme(
//       brightness: Brightness.dark,
//       primary: primaryDark,
//       onPrimary: backgroundDark,
//       primaryContainer: primaryDark.withValues(alpha: 0.2),
//       onPrimaryContainer: primaryDark,
//       secondary: secondaryDark,
//       onSecondary: backgroundDark,
//       secondaryContainer: secondaryDark.withValues(alpha: 0.2),
//       onSecondaryContainer: secondaryDark,
//       tertiary: tertiaryDark,
//       onTertiary: backgroundDark,
//       tertiaryContainer: tertiaryDark.withValues(alpha: 0.2),
//       onTertiaryContainer: tertiaryDark,
//       error: errorDark,
//       onError: backgroundDark,
//       errorContainer: errorDark.withValues(alpha: 0.2),
//       onErrorContainer: errorDark,
//       surface: surfaceDark,
//       onSurface: onSurfaceDark,
//       onSurfaceVariant: onBackgroundDark,
//       outline: outlineDark,
//       outlineVariant: outlineDark.withValues(alpha: 0.5),
//       shadow: Colors.black.withValues(alpha: 0.3),
//       scrim: Colors.black.withValues(alpha: 0.7),
//       inverseSurface: surface,
//       onInverseSurface: onSurface,
//       inversePrimary: primary,
//       surfaceTint: primaryDark,
//     ),
//     scaffoldBackgroundColor: backgroundDark,
//     appBarTheme: AppBarTheme(
//       backgroundColor: surfaceDark,
//       foregroundColor: onSurfaceDark,
//       elevation: 0,
//       scrolledUnderElevation: 2,
//       shadowColor: Colors.black.withValues(alpha: 0.3),
//       surfaceTintColor: surfaceDark,
//       titleTextStyle: GoogleFonts.playfairDisplay(
//         fontSize: 20,
//         fontWeight: FontWeight.w600,
//         color: onSurfaceDark,
//         letterSpacing: 0.15.sp
//       ),
//       iconTheme: IconThemeData(color: onSurfaceDark, size: 24),
//       actionsIconTheme: IconThemeData(color: onSurfaceDark, size: 24),
//       centerTitle: true,
//     ),
//     // cardTheme: CardTheme(
//     //   color: surfaceDark,
//     //   elevation: 2,
//     //   shadowColor: Colors.black.withValues(alpha: 0.3),
//     //   surfaceTintColor: surfaceDark,
//     //   shape: RoundedRectangleBorder(
//     //     borderRadius: BorderRadius.circular(12),
//     //   ),
//     //   margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//     // ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: surfaceDark,
//       selectedItemColor: primaryDark,
//       unselectedItemColor: onBackgroundDark,
//       type: BottomNavigationBarType.fixed,
//       elevation: 8,
//       selectedLabelStyle: GoogleFonts.poppins(
//         fontSize: 12,
//         fontWeight: FontWeight.w500,
//       ),
//       unselectedLabelStyle: GoogleFonts.poppins(
//         fontSize: 12,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//     floatingActionButtonTheme: FloatingActionButtonThemeData(
//       backgroundColor: primaryDark,
//       foregroundColor: backgroundDark,
//       elevation: 6,
//       focusElevation: 8,
//       hoverElevation: 8,
//       highlightElevation: 12,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: primaryDark,
//         foregroundColor: backgroundDark,
//         elevation: 2,
//         shadowColor: Colors.black.withValues(alpha: 0.3),
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         textStyle: GoogleFonts.poppins(
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//           letterSpacing: 0.1.sp
//         ),
//       ),
//     ),
//     outlinedButtonTheme: OutlinedButtonThemeData(
//       style: OutlinedButton.styleFrom(
//         foregroundColor: primaryDark,
//         side: BorderSide(color: primaryDark, width: 1),
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         textStyle: GoogleFonts.poppins(
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//           letterSpacing: 0.1.sp
//         ),
//       ),
//     ),
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(
//         foregroundColor: primaryDark,
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         textStyle: GoogleFonts.poppins(
//           fontSize: 14.sp,
//           fontWeight: FontWeight.w500,
//           letterSpacing: 0.1.sp
//         ),
//       ),
//     ),
//     textTheme: _buildDarkTextTheme(),
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: surfaceDark,
//       contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: outlineDark, width: 1),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: outlineDark, width: 1),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: primaryDark, width: 2),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: errorDark, width: 1),
//       ),
//       focusedErrorBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: errorDark, width: 2),
//       ),
//       labelStyle: GoogleFonts.poppins(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w400,
//         color: onBackgroundDark,
//       ),
//       hintStyle: GoogleFonts.poppins(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w400,
//         color: onBackgroundDark.withValues(alpha: 0.6),
//       ),
//     ),
//     switchTheme: SwitchThemeData(
//       thumbColor: WidgetStateProperty.resolveWith((states) {
//         if (states.contains(WidgetState.selected)) return primaryDark;
//         return outlineDark;
//       }),
//       trackColor: WidgetStateProperty.resolveWith((states) {
//         if (states.contains(WidgetState.selected))
//           return primaryDark.withValues(alpha: 0.3);
//         return outlineDark.withValues(alpha: 0.3);
//       }),
//     ),
//     checkboxTheme: CheckboxThemeData(
//       fillColor: WidgetStateProperty.resolveWith((states) {
//         if (states.contains(WidgetState.selected)) return primaryDark;
//         return Colors.transparent;
//       }),
//       checkColor: WidgetStateProperty.all(backgroundDark),
//       side: BorderSide(color: outlineDark, width: 2),
//     ),
//     progressIndicatorTheme: ProgressIndicatorThemeData(
//       color: primaryDark,
//       linearTrackColor: outlineDark,
//       circularTrackColor: outlineDark,
//     ),
//     // tabBarTheme: TabBarTheme(
//     //   labelColor: primaryDark,
//     //   unselectedLabelColor: onBackgroundDark,
//     //   indicatorColor: primaryDark,
//     //   indicatorSize: TabBarIndicatorSize.label,
//     //   labelStyle: GoogleFonts.poppins(
//     //     fontSize: 14.sp,
//     //     fontWeight: FontWeight.w500,
//     //   ),
//     //   unselectedLabelStyle: GoogleFonts.poppins(
//     //     fontSize: 14.sp,
//     //     fontWeight: FontWeight.w400,
//     //   ),
//     // ),
//     tooltipTheme: TooltipThemeData(
//       decoration: BoxDecoration(
//         color: onSurfaceDark.withValues(alpha: 0.9),
//         borderRadius: BorderRadius.circular(4),
//       ),
//       textStyle: GoogleFonts.poppins(
//         color: backgroundDark,
//         fontSize: 12.sp,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//     snackBarTheme: SnackBarThemeData(
//       backgroundColor: onSurfaceDark,
//       contentTextStyle: GoogleFonts.poppins(
//         color: backgroundDark,
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w400,
//       ),
//       actionTextColor: tertiaryDark,
//       behavior: SnackBarBehavior.floating,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//     ),
//     dividerTheme: DividerThemeData(
//       color: outlineDark,
//       thickness: 1,
//       space: 1,
//     ),
//   );
//
//   /// Build light theme text styles with spatial typography
//   static TextTheme _buildLightTextTheme() {
//     return TextTheme(
//       // Display styles - Playfair Display for elegance
//       displayLarge: GoogleFonts.playfairDisplay(
//         fontSize: 57.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurface,
//         letterSpacing: -0.25.sp,
//       ),
//       displayMedium: GoogleFonts.playfairDisplay(
//         fontSize: 45.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurface,
//       ),
//       displaySmall: GoogleFonts.playfairDisplay(
//         fontSize: 36.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurface,
//       ),
//
//       // Headline styles - Playfair Display for sophistication
//       headlineLarge: GoogleFonts.playfairDisplay(
//         fontSize: 32.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurface,
//       ),
//       headlineMedium: GoogleFonts.playfairDisplay(
//         fontSize: 28.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurface,
//       ),
//       headlineSmall: GoogleFonts.playfairDisplay(
//         fontSize: 24.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurface,
//       ),
//
//       // Title styles - Playfair Display for quote titles
//       titleLarge: GoogleFonts.playfairDisplay(
//         fontSize: 22.sp,
//         fontWeight: FontWeight.w700,
//         color: onSurface,
//         letterSpacing: 0.sp
//       ),
//       titleMedium: GoogleFonts.playfairDisplay(
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurface,
//         letterSpacing: 0.15.sp
//       ),
//       titleSmall: GoogleFonts.playfairDisplay(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurface,
//         letterSpacing: 0.1.sp
//       ),
//
//       // Body styles - Poppins for extended reading
//       bodyLarge: GoogleFonts.poppins(
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurface,
//         letterSpacing: 0.5.sp,
//         height: 1.5.h
//       ),
//       bodyMedium: GoogleFonts.poppins(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurface,
//         letterSpacing: 0.25.sp,
//         height: 1.4.h
//       ),
//       bodySmall: GoogleFonts.poppins(
//         fontSize: 12.sp,
//         fontWeight: FontWeight.w400,
//         color: onBackground,
//         letterSpacing: 0.4.sp,
//         height: 1.3.h
//       ),
//
//       // Label styles - Roboto for UI elements
//       labelLarge: GoogleFonts.roboto(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w500,
//         color: onSurface,
//         letterSpacing: 0.1.sp
//       ),
//       labelMedium: GoogleFonts.roboto(
//         fontSize: 12.sp,
//         fontWeight: FontWeight.w500,
//         color: onBackground,
//         letterSpacing: 0.5.sp
//       ),
//       labelSmall: GoogleFonts.roboto(
//         fontSize: 11.sp,
//         fontWeight: FontWeight.w500,
//         color: onBackground,
//         letterSpacing: 0.5.sp
//       ),
//     );
//   }
//
//   /// Build dark theme text styles with spatial typography
//   static TextTheme _buildDarkTextTheme() {
//     return TextTheme(
//       displayLarge: GoogleFonts.playfairDisplay(
//         fontSize: 57.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurfaceDark,
//         letterSpacing: -0.25,
//       ),
//       displayMedium: GoogleFonts.playfairDisplay(
//         fontSize: 45.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurfaceDark,
//       ),
//       displaySmall: GoogleFonts.playfairDisplay(
//         fontSize: 36.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurfaceDark,
//       ),
//       headlineLarge: GoogleFonts.playfairDisplay(
//         fontSize: 32.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurfaceDark,
//       ),
//       headlineMedium: GoogleFonts.playfairDisplay(
//         fontSize: 28.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurfaceDark,
//       ),
//       headlineSmall: GoogleFonts.playfairDisplay(
//         fontSize: 24.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurfaceDark,
//       ),
//       titleLarge: GoogleFonts.playfairDisplay(
//         fontSize: 22.sp,
//         fontWeight: FontWeight.w700,
//         color: onSurfaceDark,
//         letterSpacing: 0.sp
//       ),
//       titleMedium: GoogleFonts.playfairDisplay(
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurfaceDark,
//         letterSpacing: 0.15.sp
//       ),
//       titleSmall: GoogleFonts.playfairDisplay(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w600,
//         color: onSurfaceDark,
//         letterSpacing: 0.1.sp
//       ),
//       bodyLarge: GoogleFonts.poppins(
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurfaceDark,
//         letterSpacing: 0.5.sp,
//         height: 1.5.h
//       ),
//       bodyMedium: GoogleFonts.poppins(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w400,
//         color: onSurfaceDark,
//         letterSpacing: 0.25.sp,
//         height: 1.4.h
//       ),
//       bodySmall: GoogleFonts.poppins(
//         fontSize: 12.sp,
//         fontWeight: FontWeight.w400,
//         color: onBackgroundDark,
//         letterSpacing: 0.4.sp,
//         height: 1.3.h,
//       ),
//       labelLarge: GoogleFonts.roboto(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w500,
//         color: onSurfaceDark,
//         letterSpacing: 0.1.sp
//       ),
//       labelMedium: GoogleFonts.roboto(
//         fontSize: 12.sp,
//         fontWeight: FontWeight.w500,
//         color: onBackgroundDark,
//         letterSpacing: 0.5.sp
//       ),
//       labelSmall: GoogleFonts.roboto(
//         fontSize: 11.sp,
//         fontWeight: FontWeight.w500,
//         color: onBackgroundDark,
//         letterSpacing: 0.5.sp
//       ),
//     );
//   }
// }
