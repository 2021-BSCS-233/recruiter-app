import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';

class EducationTile extends StatelessWidget {
  final String title;
  final String organization;
  final String startDate;
  final String endDate;

  const EducationTile({
    super.key,
    required this.title,
    required this.organization,
    required this.startDate,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      titleAlignment: ListTileTitleAlignment.top,
      leading: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Get.theme.colorScheme.surface,
        ),
        child: Center(
          child: SvgPicture.string(AppIcons.educationIcon),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            organization,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '$startDate - $endDate',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}