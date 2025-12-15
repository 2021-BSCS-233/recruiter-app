import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recruiter/core/common/icons/app_icons.dart';
import 'package:recruiter/core/common/widgets/option_toggle_tile.dart';
import 'package:recruiter/core/common/widgets/white_curved_box.dart';
import 'package:get/get.dart';
import 'package:recruiter/core/routes/app_routes.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.offAllNamed(AppRoutes.login);
            },
            child: SvgPicture.string(AppIcons.exitIcon),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: WhiteCurvedBox(
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.string(AppIcons.bellIcon),
                  SizedBox(width: 5),
                  Text(
                    'Notification Preferences',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ],
              ),
              OptionToggleTile(
                toggleValue: false,
                toggleFunction: () {},
                tileText: 'Job Matches',
              ),
              SizedBox(height: 15),
              OptionToggleTile(
                toggleValue: false,
                toggleFunction: () {},
                tileText: 'Application Updates',
              ),
              SizedBox(height: 15),
              OptionToggleTile(
                toggleValue: false,
                toggleFunction: () {},
                tileText: 'Recruiter Messages',
              ),
              SizedBox(height: 15),
              OptionToggleTile(
                toggleValue: false,
                toggleFunction: () {},
                tileText: 'Interview Invitations',
              ),
              SizedBox(height: 15),
              OptionToggleTile(
                toggleValue: false,
                toggleFunction: () {},
                tileText: 'Interview Reschedules',
              ),
              SizedBox(height: 15),
              OptionToggleTile(
                toggleValue: false,
                toggleFunction: () {},
                tileText: 'Mock Interview Results',
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
