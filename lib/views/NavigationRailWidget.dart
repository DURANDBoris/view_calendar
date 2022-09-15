import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visual_calendar/providers/ViewProvider.dart';

Widget NavigationRailWidget(
    {required BuildContext context, required ViewProvider provider}) {
  return Selector<ViewProvider, int>(
    selector: (context, provider) => provider.page,
    builder: (context, data, child) {
      if (MediaQuery.of(context).size.width >= 1080) {
        return NavigationRail(
          minExtendedWidth: 40,
          selectedIndex: provider.page,
          onDestinationSelected: (int index) {
            provider.page = index;
          },
          labelType: NavigationRailLabelType.all,
          selectedIconTheme: IconThemeData(color: Colors.white),
          selectedLabelTextStyle: const TextStyle(
            color: Colors.white,
          ),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          unselectedLabelTextStyle: const TextStyle(),
// navigation rail items
          destinations: const [
            NavigationRailDestination(
                icon: Icon(Icons.task), label: Text('Tasks')),
            NavigationRailDestination(
                icon: Icon(Icons.calendar_month), label: Text('Calendar')),
            NavigationRailDestination(
                icon: Icon(Icons.event), label: Text('Events')),
            NavigationRailDestination(
                icon: Icon(Icons.settings), label: Text('Settings')),
          ],
        );
      } else
        return Container();
    },
  );
}
