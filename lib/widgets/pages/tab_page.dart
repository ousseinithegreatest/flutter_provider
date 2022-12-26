import 'package:flutter/material.dart';
import 'package:provider_test/widgets/pages/color_page.dart';
import 'package:provider_test/widgets/pages/counter_page.dart';
import 'package:provider_test/widgets/pages/toDos-list.dart';

class TabPage extends StatelessWidget {
  static List<Icon> icons = const [
    Icon(Icons.numbers),
    Icon(Icons.palette),
    Icon(Icons.list)
  ];

  List<Tab> tabs = icons
      .map((icon) => Tab(
            icon: icon,
          ))
      .toList();

  TabBar tabBar() => TabBar(tabs: tabs);

  // const TapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: icons.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Providers"),
          bottom: tabBar(),
        ),
        body: TabBarView(
          children: [CounterPage(), ColorPage(), ToDoList()],
        ),
      ),
    );
  }
}
