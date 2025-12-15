import 'package:flutter/material.dart';
import 'package:recruiter/core/common/widgets/action_button.dart';
import 'package:recruiter/core/common/widgets/drop_down_menu.dart';
import 'package:recruiter/core/common/widgets/input_field.dart';
import 'package:recruiter/core/common/widgets/multi_line_input_field.dart';
import 'package:recruiter/core/common/widgets/white_card.dart';
import 'package:get/get.dart';
import 'package:recruiter/features/messages/controller/message_controller.dart';

class NewConversationDialog extends StatelessWidget {
  final MessageController messageController = Get.find<MessageController>();

  NewConversationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: WhiteCard(
          secondary: true,
          title: 'Start New Conversation',
          onCancel: () {
            Get.back();
          },
          child: Column(
            children: [
              LabeledDropDownMenu(
                label: 'Message Type',
                mandatory: true,
                items: [],
                onChange: () {},
                hintText: 'Select message type',
              ),
              SizedBox(height: 15),
              LabeledDropDownMenu(
                label: 'To',
                mandatory: true,
                items: [],
                onChange: () {},
                hintText: 'Select who to message',
              ),
              SizedBox(height: 15),
              MultiLineInputField(
                label: 'Message',
                mandatory: true,
                controller: messageController.newConversationTC,
                hintText: 'Enter message',
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ActionButton(
                    inverted: true,
                    noBorder: true,
                    width: 70,
                    buttonText: 'Cancel',
                    onPress: () {
                      Get.back();
                    },
                  ),
                  SizedBox(width: 10),
                  ActionButton(
                    width: 120,
                    buttonText: 'Send Message',
                    onPress: () {
                      Get.back();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
