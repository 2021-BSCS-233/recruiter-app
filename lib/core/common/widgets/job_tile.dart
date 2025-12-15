import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class JobTile extends StatelessWidget {
  final int applicantCount;
  final String jobTitle;
  final String jobSalary;
  final bool bookMarked;
  final String companyLogo;
  final String companyName;
  final String companyLocation;
  final String department;
  final String workHourType;
  final String workLocation;
  final DateTime datePosted;
  final Function onTileTap;
  final Function onIconTap;
  final String currentStatus;

  JobTile({
    super.key,
    required this.jobTitle,
    required this.jobSalary,
    required this.bookMarked,
    required this.companyLogo,
    required this.companyName,
    required this.companyLocation,
    required this.department,
    required this.workHourType,
    required this.workLocation,
    required this.datePosted,
    required this.onTileTap,
    required this.onIconTap,
    required this.currentStatus,
    required this.applicantCount,
  });

  final List<String> jobStatusOptions = [
    'NO STATUS',
    'DRAFT',
    'PUBLISHED',
    'CLOSED',
    'PAUSED',
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTileTap();
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Get.theme.colorScheme.surface,
                      ),
                      child: Center(
                        child: Text(
                          currentStatus.toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.green.shade400,
                      ),
                      child: Center(
                        child: Text(
                          '$applicantCount Applicants',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Get.theme.colorScheme.surface,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                bookMarked
                    ? Icon(Icons.bookmark)
                    : Icon(Icons.bookmark_border_outlined),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    jobTitle,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: 1,
                  height: 16,
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    border: BoxBorder.all(color: Get.theme.colorScheme.outline),
                  ),
                ),
                Text(
                  jobSalary,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.string(companyLogo),
                Expanded(
                  child: Text(
                    '$companyName - $companyLocation',
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              department,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.string(workHourType),
                    SizedBox(width: 3),
                    SvgPicture.string(workLocation),
                  ],
                ),
                Text(
                  DateFormat('MMM dd yyyy').format(datePosted),
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
