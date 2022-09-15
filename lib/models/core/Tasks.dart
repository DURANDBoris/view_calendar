import 'package:visual_calendar/models/core/SubTasks.dart';

class Tasks {
  int id;
  String name;
  List<SubTasks> subTasks;
  bool status = false;
  bool _isExpanded = false;

  Tasks({required this.id, required this.name, required this.subTasks});

  bool get isExpanded => _isExpanded;

  set isExpanded(bool value) {
    _isExpanded = value;
  }
}
