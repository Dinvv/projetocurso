import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskList extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {'title': 'Title 1', 'importance': 'Very important'},
    {'title': 'Title 2', 'importance': 'Important'},
    {'title': 'Title 3', 'importance': 'Not important'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(tasks[index]['title']!),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(tasks[index]['importance']!, style: TextStyle(color: Colors.grey)),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: SvgPicture.asset('assets/ic_vector.svg'),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/newscreen');// Ação do botão
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
