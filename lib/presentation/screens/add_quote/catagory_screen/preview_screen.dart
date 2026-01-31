import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Preview", style: theme.textTheme.titleMedium),

                Container(
                  height: 37.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                    color: Color(0xFFefeffe),
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.remove_red_eye, color: Color(0xFF6568f1)),
                      Text(
                        "Live Preview",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 200.h,
              width: double.infinity,

              child: Card(
                color: Colors.white,
                elevation: 6,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.3,
                        ),
                        iconSize: 48,
                        icon: Icon(Icons.format_quote),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'Your quote will appear here',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.5,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildPreviewControl(context, "Zoom in", Icons.zoom_in, () {}),
              _buildPreviewControl(
                context,
                "Full Screen",
                Icons.fullscreen,
                () {},
              ),
              _buildPreviewControl(
                context,
                "Share Preview",
                Icons.share,
                () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildPreviewControl(
  BuildContext context,
  String label,
  IconData icon,
  VoidCallback onTap,
) {
  final theme = Theme.of(context);

  return GestureDetector(
    onTap: onTap,
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              size: 20,
            ),
            SizedBox(height: 0.5.h),
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),

  );
}
