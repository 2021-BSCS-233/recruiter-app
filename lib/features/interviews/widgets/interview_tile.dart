import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruiter/core/common/widgets/bubble_list_widget.dart';
import 'package:recruiter/core/common/widgets/white_curved_box.dart';

class InterviewTile extends StatelessWidget {
  final Function onTap;

  const InterviewTile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){onTap();},
      child: WhiteCurvedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'UI/UX Design Candidates',
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ),
                BubbleListWidget(text: 'Dave Smith', onTap: () {}, noIcon: true),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Physical',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(CupertinoIcons.clock),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    '12:00PM-1:00PM, 9-Oct-2025',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Floor # 3, Office # 301, Fortune Tower, In front of Times Consultant',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.people),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'You, Jane Cooper, Michael Ford',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(CupertinoIcons.creditcard),
                SizedBox(width: 5),
                Text(
                  'Bring government ID',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
