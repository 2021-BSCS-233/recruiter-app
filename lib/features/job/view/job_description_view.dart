import 'package:flutter/material.dart';
import 'package:recruiter/features/job/controller/jobs_controller.dart';
import 'package:get/get.dart';

class JobDescriptionView extends StatelessWidget {
  final JobController jobController = Get.find<JobController>();

  JobDescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Job Detail',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Job Overview',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                jobController.debugJobOverView,
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              SizedBox(height: 15),
              Text(
                'Responsibilities',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                jobController.debugJobReq,
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              SizedBox(height: 15),
              Text(
                'Job Requirements',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                jobController.debugJobReq,
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              SizedBox(height: 15),
              Text(
                'Other Details',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                jobController.debugJobReq,
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
