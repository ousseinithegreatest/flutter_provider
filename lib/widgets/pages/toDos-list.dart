import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/color_provider.dart';
import 'package:provider_test/providers/todo_provider.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: context.watch<ToDoProvider>().controller,
                  decoration: const InputDecoration(hintText: "Ajouter"),
                ),
              ),
              IconButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  context.read<ToDoProvider>().add();
                },
                icon: const Icon(Icons.send),
              ),
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                final String string =
                    context.watch<ToDoProvider>().toDos[index];

                return ListTile(
                  title: Text(string),
                  trailing: IconButton(
                    onPressed: (() =>
                        context.read<ToDoProvider>().remove(string)),
                    icon: Icon(
                      Icons.delete,
                      color: context.watch<ColorProvider>().color,
                    ),
                  ),
                );
              },
              separatorBuilder: ((context, index) => const Divider()),
              itemCount: context.watch<ToDoProvider>().toDos.length),
        )
      ],
    );
  }
}
