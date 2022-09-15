import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visual_calendar/providers/ViewProvider.dart';
import 'package:visual_calendar/views/HomePage.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calendar',
        theme: ThemeData.dark(),
        home: HomePage(),
      ),
    );
  }
}
