import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/common/widgets/white_curved_box.dart';

class NoJobFoundMessage extends StatelessWidget {
  final String title;
  final String subTitle;

  const NoJobFoundMessage({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: WhiteCurvedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                SvgPicture.string(AppIcons.highlightIcon),
                Positioned(
                  top: 12,
                  left: 12,
                  child: SvgPicture.string(
                    AppIcons.searchIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
