import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoteTab extends StatelessWidget {
  const NoteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            border: Border.all(color: Get.theme.colorScheme.tertiary),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '@Jane Cooper I rate this candidate 8/10. Do you have any remarks?',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'by Alex Smith',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    '11:00 AM, 10/3/2025',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
