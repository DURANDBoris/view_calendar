import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:visual_calendar/providers/ViewProvider.dart';

Widget CalendarPage(
    {required BuildContext context, required ViewProvider provider}) {
  return Column(
    children: [
      SizedBox(height: 40),
      Selector<ViewProvider, DateTime>(
          selector: (context, provider) => provider.selectedDay,
          builder: (context, data, child) {
            return TableCalendar(
              locale: 'fr_FR',
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarFormat: CalendarFormat.month,
              focusedDay: provider.selectedDay,
              firstDay: DateTime.utc(2000),
              lastDay: DateTime.utc(2500),
              selectedDayPredicate: (day) {
                return isSameDay(provider.selectedDay, day);
              },
              onDaySelected: (data, value) {
                provider.selectedDay = value;
              },
            );
          })
    ],
  );
}
