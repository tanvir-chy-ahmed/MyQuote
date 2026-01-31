import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myquote/core/constants/constants_strings.dart';
import 'package:myquote/core/services/hiveTojson.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Future<void> openChrome() async {
    final Uri url = Uri.parse("https://github.com/tanvir-chy-ahmed");

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication, // Opens Chrome/default browser
    )) {
      throw Exception("Could not launch $url");
    }
  }

  bool checkGrid = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 16.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.format_quote,
                          color: Color(0xFF6568f1),
                          size: 32.sp, // responsive icon size
                        ),
                        title: Text(
                          "QuoteVault",
                          style: GoogleFonts.daiBannaSil(
                            color: Color(0xFF6568f1),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "version 1.0.0",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "Your personal collection of inspiring quotes with beautiful visual sharing capabilities.",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.sp,
                          height: 1.4, // better line spacing
                        ),
                      ),
                      SizedBox(height: 12.h),
                    ],
                  ),
                ),
              ),
            ),

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
                      title: Text("Backup & Sync"),
                      subtitle: Text("Sync your quotes across devices"),
                      leading: Icon(Icons.backup, color: Color(0xFF6568f1)),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: ()async{
                        final file = await HiveBackupService.backupHiveBox(AppString.DB_NAME);
                        // Button click logic
                        ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Backup saved: ${file.path}")),
                        );
                      },
                      title: Text("Export Quotes"),
                      subtitle: Text("Export all quotes as TXT or Pdf"),
                      leading: Icon(Icons.download, color: Color(0xFF6568f1)),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text("Theme"),
                      subtitle: Text("Customize app appearance"),
                      leading: Icon(Icons.color_lens, color: Color(0xFF6568f1)),
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
                      title: Text("About"),
                      subtitle: Text("Learn more about QuoteVault"),
                      leading: Icon(Icons.info_sharp, color: Color(0xFF6568f1)),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        openChrome();
                      },

                      child: ListTile(
                        title: Text("Source Code"),
                        subtitle: Text("View on Github"),
                        leading: Icon(Icons.download, color: Color(0xFF6568f1)),
                        trailing: Icon(
                          Icons.open_in_new_sharp,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
