import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/common/widgets/drop_down_menu.dart';
import 'package:recruiter/core/common/widgets/input_field.dart';
import 'package:recruiter/core/common/widgets/score_guage_secondary.dart';
import 'package:recruiter/core/routes/app_routes.dart';
import 'package:recruiter/features/job/controller/jobs_controller.dart';
import 'package:get/get.dart';
import 'package:recruiter/features/job/widgets/applicant_tile.dart';

class JobDetailView extends StatelessWidget {
  final JobController jobController = Get.find<JobController>();

  JobDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Job Detail',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 24,
              width: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Get.theme.colorScheme.surface,
                border: BoxBorder.all(color: Get.theme.colorScheme.outline),
              ),
              child: Center(
                child: Text(
                  'DRAFTED',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text(
                'UI/UX Designer',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                'Competitive Package',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SvgPicture.string(AppIcons.googleIconSvg),
                  Text(
                    'Google - Los Angeles, California, US',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.string(AppIcons.fullTimeIcon, height: 24),
                      SizedBox(width: 3),
                      SvgPicture.string(AppIcons.onSiteIcon, height: 24),
                    ],
                  ),
                  Text(
                    DateFormat('MMM dd yyyy').format(DateTime.now()),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Department',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Design',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Experience level',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '3 years',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Application Deadline',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        DateFormat('MMM dd yyyy').format(DateTime.now()),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Resume Required',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 10),
                      Icon(Icons.check),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cover Letter',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Icon(Icons.close),
                ],
              ),
              SizedBox(height: 15),
              Text(
                'Skills',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              Text(
                'UX Design, Design system, heuristics evaluation',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              SizedBox(height: 25),
              Text(
                'Job Overview',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                jobController.debugJobOverView,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 7,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.jobDescriptionView);
                },
                child: Text(
                  'Read More',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Applicants (11)',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 15),
              InputField(
                controller: jobController.jobSearchTC,
                prefixIcon: Icons.search,
                hintText: 'Search by name',
              ),
              SizedBox(height: 8),
              LabeledDropDownMenu(
                items: [],
                onChange: () {},
                hintText: 'Exp. Level',
              ),
              SizedBox(height: 8),
              LabeledDropDownMenu(
                items: [],
                onChange: () {},
                hintText: 'All Status',
              ),
              SizedBox(height: 8),
              LabeledDropDownMenu(
                items: [],
                onChange: () {},
                hintText: 'Application Source',
              ),
              SizedBox(height: 15),
              ApplicantTIle(
                profilePic: 'assets/images/temp.jpg',
                name: 'Dave Smith',
                email: 'davesmith@gmail.com',
                applicationStatus: 'APPLIED',
                years: 3,
                score: 90,
                resumeName: 'dave smith resume',
                coverName: 'UI/UX Design',
                date: DateTime.now(),
                onTap: () {
                  Get.toNamed(AppRoutes.jobApplicantProfile);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
