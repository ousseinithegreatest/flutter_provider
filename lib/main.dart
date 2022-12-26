import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/color_provider.dart';
import 'package:provider_test/providers/counter_provider.dart';
import 'package:provider_test/providers/todo_provider.dart';
import 'package:provider_test/widgets/pages/tab_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ColorProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ToDoProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: context.watch<ColorProvider>().color,
      ),
      home: TabPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
