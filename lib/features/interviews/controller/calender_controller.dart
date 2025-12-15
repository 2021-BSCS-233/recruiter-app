import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CalendarController extends GetxController {
  final Map<DateTime, List<String>> kEventDates = {
    DateTime.utc(2025, 12, 6): ['Event 1'],
    DateTime.utc(2025, 12, 11): ['Event 2'],
    DateTime.utc(2025, 12, 12): ['Event 3'],
    DateTime.utc(2025, 12, 16): ['Event 4'],
    DateTime.utc(2025, 12, 22): ['Event 5'],
    DateTime.utc(2025, 12, 25): ['Event 6'],
  };

  // Use Rx (observables) for state variables that need UI updates
  var focusedDay = DateTime.now().obs;
  var selectedDay = Rx<DateTime?>(null);

  @override
  void onInit() {
    // Initialize selected day to the current date for the initial blue circle
    selectedDay.value = DateTime.utc(
      focusedDay.value.year,
      focusedDay.value.month,
      focusedDay.value.day,
    );
    super.onInit();
  }

  // Helper function to check for events (used by table_calendar)
  List<dynamic> getEventsForDay(DateTime day) {
    // Normalize the date to UTC start of day for accurate lookup
    final normalizedDay = DateTime.utc(day.year, day.month, day.day);
    return kEventDates[normalizedDay] ?? [];
  }

  // Function to handle date selection (runs your custom logic)
  void onDaySelected(DateTime newSelectedDay, DateTime newFocusedDay) {
    // Check if the newly selected day is different from the currently selected day
    if (!isSameDay(selectedDay.value, newSelectedDay)) {
      // Update the state
      selectedDay.value = newSelectedDay;
      focusedDay.value = newFocusedDay;

      // 🎯 Your custom function logic goes here!
      debugPrint(
        "You tapped on: ${newSelectedDay.day}/${newSelectedDay.month}/${newSelectedDay.year}",
      );
    }
  }

  // Helper from table_calendar to check if two days are the same
  bool isSameDay(DateTime? a, DateTime? b) {
    if (a == null || b == null) {
      return false;
    }
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}
