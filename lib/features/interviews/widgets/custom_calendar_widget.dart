import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recruiter/features/interviews/controller/calender_controller.dart';
import 'package:table_calendar/table_calendar.dart';

// Ensure you have added table_calendar to your pubspec.yaml

class CustomCalendarWidget extends StatelessWidget {
  const CustomCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize or retrieve the controller
    final CalendarController calendarController = Get.put(CalendarController());

    // Obx reacts only to the specific Rx variables it watches
    return Obx(
      () => TableCalendar(
        // --- Date Control (Reads from controller) ---
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: calendarController.focusedDay.value,
        calendarFormat: CalendarFormat.month,
        startingDayOfWeek: StartingDayOfWeek.sunday,

        // --- Selection Handling ---
        selectedDayPredicate: (day) => calendarController.isSameDay(
          calendarController.selectedDay.value,
          day,
        ),
        onDaySelected: calendarController.onDaySelected,

        // --- Header Styling (August 2023) ---
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          leftChevronIcon: Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: Get.theme.colorScheme.onSurface,
          ),
          rightChevronIcon: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Get.theme.colorScheme.onSurface,
          ),
          titleTextStyle: TextStyle(
            color: Get.theme.colorScheme.onSurface,
            fontSize: 16,
          ),
        ),

        // --- Builder for Event Dots & Selected Day ---
        calendarBuilders: CalendarBuilders(
          // Builder for the event indicators (the dots)
          markerBuilder: (context, day, events) {
            if (events.isNotEmpty) {
              return Positioned(
                left: 0,
                right: 0,
                bottom: 5,
                child: Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Get.theme.colorScheme.primary, // Dot Color
                  ),
                ),
              );
            }
            return null;
          },

          // Builder for the selected day appearance (the solid circle)
          selectedBuilder: (context, day, focusedDay) {
            return Center(
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Get.theme.colorScheme.primary, // The dark circle color
                ),
                alignment: Alignment.center,
                child: Text(
                  '${day.day}',
                  style: TextStyle(color: Get.theme.colorScheme.onPrimary, fontSize: 14),
                ),
              ),
            );
          },

          // Custom styling for default days
          defaultBuilder: (context, day, focusedDay) {
            return Center(
              child: Text(
                '${day.day}',
                style: TextStyle(
                  color: Get.theme.colorScheme.onSurface,
                  fontSize: 14,
                ),
              ),
            );
          },
        ),

        // --- Event Mapping ---
        eventLoader: calendarController.getEventsForDay,

        // --- General Calendar & Day Styling ---
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          isTodayHighlighted: false,
          defaultTextStyle: TextStyle(
            color: Get.theme.colorScheme.onSurface,
            fontSize: 14,
          ),
          weekendTextStyle: TextStyle(
            color: Get.theme.colorScheme.onSurface,
            fontSize: 14,
          ),
          selectedDecoration: const BoxDecoration(
            // Must be transparent since we handle the decoration in selectedBuilder
            shape: BoxShape.circle,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
