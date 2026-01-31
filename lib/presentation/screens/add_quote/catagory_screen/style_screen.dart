import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleScreen extends StatefulWidget {
  const StyleScreen({super.key});

  @override
  State<StyleScreen> createState() => _StyleScreenState();
}

class _StyleScreenState extends State<StyleScreen> {

  

  static final List<Map<String, dynamic>> _fontFamilies = [
    {
      'name': 'Playfair Display',
      'display': 'Playfair',
      'style': GoogleFonts.playfairDisplay(),
    },
    {
      'name': 'Poppins',
      'display': 'Poppins',
      'style': GoogleFonts.poppins(),
    },
    {
      'name': 'Roboto Serif',
      'display': 'RobotoSerif',
      'style': GoogleFonts.robotoSerif(),
    },
    {
      'name': 'Lora',
      'display': 'Lora',
      'style': GoogleFonts.lora(),
    },
    {
      'name': 'Merriweather',
      'display': 'Merri',
      'style': GoogleFonts.merriweather(),
    },

    // ---------------------------
    // 🔥 Additional Beautiful Fonts
    // ---------------------------
    {
      'name': 'Montserrat',
      'display': 'Monts',
      'style': GoogleFonts.montserrat(),
    },
    {
      'name': 'Open Sans',
      'display': 'OpenSans',
      'style': GoogleFonts.openSans(),
    },
    {
      'name': 'Nunito',
      'display': 'Nunito',
      'style': GoogleFonts.nunito(),
    },
    {
      'name': 'Oswald',
      'display': 'Oswald',
      'style': GoogleFonts.oswald(),
    },
    {
      'name': 'Raleway',
      'display': 'Raleway',
      'style': GoogleFonts.raleway(),
    },
    {
      'name': 'Quicksand',
      'display': 'Quick',
      'style': GoogleFonts.quicksand(),
    },
    {
      'name': 'Source Code Pro',
      'display': 'Source',
      'style': GoogleFonts.sourceCodePro(),
    },
    {
      'name': 'Archivo',
      'display': 'Archivo',
      'style': GoogleFonts.archivo(),
    },
    {
      'name': 'DM Serif Display',
      'display': 'DM Serif',
      'style': GoogleFonts.dmSerifDisplay(),
    },
    {
      'name': 'Dancing Script',
      'display': 'Dance',
      'style': GoogleFonts.dancingScript(),
    },
    {
      'name': 'Pacifico',
      'display': 'Pacif',
      'style': GoogleFonts.pacifico(),
    },
    {
      'name': 'Indie Flower',
      'display': 'Indie',
      'style': GoogleFonts.indieFlower(),
    },
    {
      'name': 'Satisfy',
      'display': 'Satisfy',
      'style': GoogleFonts.satisfy(),
    },
    {
      'name': 'Courgette',
      'display': 'Cour',
      'style': GoogleFonts.courgette(),
    },
    {
      'name': 'Great Vibes',
      'display': 'Vibes',
      'style': GoogleFonts.greatVibes(),
    },
    {
      'name': 'Cormorant Garamond',
      'display': 'Cormorant',
      'style': GoogleFonts.cormorantGaramond(),
    },
    {
      'name': 'Libre Baskerville',
      'display': 'Basker',
      'style': GoogleFonts.libreBaskerville(),
    },
    {
      'name': 'Crimson Text',
      'display': 'Crimson',
      'style': GoogleFonts.crimsonText(),
    },
    {
      'name': 'Josefin Sans',
      'display': 'Josefin',
      'style': GoogleFonts.josefinSans(),
    },
    {
      'name': 'Kanit',
      'display': 'Kanit',
      'style': GoogleFonts.kanit(),
    },
    {
      'name': 'Teko',
      'display': 'Teko',
      'style': GoogleFonts.teko(),
    },
    {
      'name': 'Concert One',
      'display': 'Concert',
      'style': GoogleFonts.concertOne(),
    },
    {
      'name': 'Fjalla One',
      'display': 'Fjalla',
      'style': GoogleFonts.fjallaOne(),
    },
    {
      'name': 'Bebas Neue',
      'display': 'Bebas',
      'style': GoogleFonts.bebasNeue(),
    },
    {
      'name': 'Ubuntu',
      'display': 'Ubuntu',
      'style': GoogleFonts.ubuntu(),
    },
    {
      'name': 'Rubik',
      'display': 'Rubik',
      'style': GoogleFonts.rubik(),
    },
  ];
  
  
  // ---------------------
  // REQUIRED VARIABLES
  // ---------------------
  String selectedFontFamily = 'Poppins';
  bool hasUnsavedChanges = false;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Font Customization", style: theme.textTheme.titleMedium),

          SizedBox(height: 2.h),

          Text("Font Family", style: theme.textTheme.titleSmall),

          SizedBox(height: 10.h),








        ],
      ),
    );
  }
}

// ---------------------------------------------------
// FONT FAMILY PICKER WIDGET
// ---------------------------------------------------
// class FontFamilyPicker extends StatelessWidget {
//   final String selectedFontFamily;
//   final Function(String) onFontFamilyChanged;
//
//   const FontFamilyPicker({
//     super.key,
//     required this.selectedFontFamily,
//     required this.onFontFamilyChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//
//     return SizedBox(
//       height: 50.h,
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         itemCount: _fontFamilies.length,
//         separatorBuilder: (context, index) => SizedBox(width: 2.w),
//         itemBuilder: (context, index) {
//           final fontFamily = _fontFamilies[index];
//           final isSelected = selectedFontFamily == fontFamily['name'];
//
//           return Row(
//             children: [
//               GestureDetector(
//                 onTap: () => onFontFamilyChanged(fontFamily['name']),
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 200),
//                   padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
//                   decoration: BoxDecoration(
//                     color: isSelected
//                         ? theme.colorScheme.primary
//                         : theme.colorScheme.surfaceContainerHighest,
//                     borderRadius: BorderRadius.circular(12),
//                     border: Border.all(
//                       color: isSelected
//                           ? theme.colorScheme.primary
//                           : theme.colorScheme.outline.withOpacity(0.3),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       fontFamily['display'],
//                       style: (fontFamily['style'] as TextStyle).copyWith(
//                         color: isSelected
//                             ? theme.colorScheme.onPrimary
//                             : theme.colorScheme.onSurface,
//                         fontSize: 14.sp,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//           SizedBox(width: 10.w,)
//             ],
//           );
//
//         },
//       ),
//     );
//   }
//
//   // -------------------------
//   // FONT FAMILY LIST
//   // -------------------------
//   static final List<Map<String, dynamic>> _fontFamilies = [
//     {
//       'name': 'Playfair Display',
//       'display': 'Playfair',
//       'style': GoogleFonts.playfairDisplay(),
//     },
//     {
//       'name': 'Poppins',
//       'display': 'Poppins',
//       'style': GoogleFonts.poppins(),
//     },
//     {
//       'name': 'Roboto Serif',
//       'display': 'RobotoSerif',
//       'style': GoogleFonts.robotoSerif(),
//     },
//     {
//       'name': 'Lora',
//       'display': 'Lora',
//       'style': GoogleFonts.lora(),
//     },
//     {
//       'name': 'Merriweather',
//       'display': 'Merri',
//       'style': GoogleFonts.merriweather(),
//     },
//
//     // ---------------------------
//     // 🔥 Additional Beautiful Fonts
//     // ---------------------------
//     {
//       'name': 'Montserrat',
//       'display': 'Monts',
//       'style': GoogleFonts.montserrat(),
//     },
//     {
//       'name': 'Open Sans',
//       'display': 'OpenSans',
//       'style': GoogleFonts.openSans(),
//     },
//     {
//       'name': 'Nunito',
//       'display': 'Nunito',
//       'style': GoogleFonts.nunito(),
//     },
//     {
//       'name': 'Oswald',
//       'display': 'Oswald',
//       'style': GoogleFonts.oswald(),
//     },
//     {
//       'name': 'Raleway',
//       'display': 'Raleway',
//       'style': GoogleFonts.raleway(),
//     },
//     {
//       'name': 'Quicksand',
//       'display': 'Quick',
//       'style': GoogleFonts.quicksand(),
//     },
//     {
//       'name': 'Source Code Pro',
//       'display': 'Source',
//       'style': GoogleFonts.sourceCodePro(),
//     },
//     {
//       'name': 'Archivo',
//       'display': 'Archivo',
//       'style': GoogleFonts.archivo(),
//     },
//     {
//       'name': 'DM Serif Display',
//       'display': 'DM Serif',
//       'style': GoogleFonts.dmSerifDisplay(),
//     },
//     {
//       'name': 'Dancing Script',
//       'display': 'Dance',
//       'style': GoogleFonts.dancingScript(),
//     },
//     {
//       'name': 'Pacifico',
//       'display': 'Pacif',
//       'style': GoogleFonts.pacifico(),
//     },
//     {
//       'name': 'Indie Flower',
//       'display': 'Indie',
//       'style': GoogleFonts.indieFlower(),
//     },
//     {
//       'name': 'Satisfy',
//       'display': 'Satisfy',
//       'style': GoogleFonts.satisfy(),
//     },
//     {
//       'name': 'Courgette',
//       'display': 'Cour',
//       'style': GoogleFonts.courgette(),
//     },
//     {
//       'name': 'Great Vibes',
//       'display': 'Vibes',
//       'style': GoogleFonts.greatVibes(),
//     },
//     {
//       'name': 'Cormorant Garamond',
//       'display': 'Cormorant',
//       'style': GoogleFonts.cormorantGaramond(),
//     },
//     {
//       'name': 'Libre Baskerville',
//       'display': 'Basker',
//       'style': GoogleFonts.libreBaskerville(),
//     },
//     {
//       'name': 'Crimson Text',
//       'display': 'Crimson',
//       'style': GoogleFonts.crimsonText(),
//     },
//     {
//       'name': 'Josefin Sans',
//       'display': 'Josefin',
//       'style': GoogleFonts.josefinSans(),
//     },
//     {
//       'name': 'Kanit',
//       'display': 'Kanit',
//       'style': GoogleFonts.kanit(),
//     },
//     {
//       'name': 'Teko',
//       'display': 'Teko',
//       'style': GoogleFonts.teko(),
//     },
//     {
//       'name': 'Concert One',
//       'display': 'Concert',
//       'style': GoogleFonts.concertOne(),
//     },
//     {
//       'name': 'Fjalla One',
//       'display': 'Fjalla',
//       'style': GoogleFonts.fjallaOne(),
//     },
//     {
//       'name': 'Bebas Neue',
//       'display': 'Bebas',
//       'style': GoogleFonts.bebasNeue(),
//     },
//     {
//       'name': 'Ubuntu',
//       'display': 'Ubuntu',
//       'style': GoogleFonts.ubuntu(),
//     },
//     {
//       'name': 'Rubik',
//       'display': 'Rubik',
//       'style': GoogleFonts.rubik(),
//     },
//   ];
//
// }
