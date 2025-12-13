import 'package:flutter/material.dart';
import 'package:recruiter/features/job/widgets/no_job_found_message.dart';

class ClosedTab extends StatelessWidget {
  const ClosedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NoJobFoundMessage(
      title: 'No closed jobs',
      subTitle:
          'Once you close a job, it will appear here for record-keeping and applicant review.',
    );
  }
}
