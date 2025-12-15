import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:recruiter/core/common/widgets/score_guage_secondary.dart';

class ApplicantTIle extends StatelessWidget {
  final String profilePic;
  final String name;
  final String email;
  final String applicationStatus;
  final int years;
  final int score;
  final String resumeName;
  final String coverName;
  final DateTime date;
  final Function onTap;

  const ApplicantTIle({
    super.key,
    required this.profilePic,
    required this.name,
    required this.email,
    required this.years,
    required this.score,
    required this.resumeName,
    required this.coverName,
    required this.date,
    required this.applicationStatus,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
              child: ListTile(
                horizontalTitleGap: 5,
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(profilePic),
                ),
                title: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                subtitle: Text(
                  email,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                trailing: Container(
                  height: 24,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Get.theme.colorScheme.surface,
                    border: BoxBorder.all(color: Get.theme.colorScheme.outline),
                  ),
                  child: Center(
                    child: Text(
                      applicationStatus,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '$years years of exp ',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                ScoreGaugeSecondary(score: score, size: 25),
                Text(
                  ' $score%',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Resume',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        resumeName,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cover Letter',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        coverName,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                DateFormat('MMM dd yyyy').format(date),
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
