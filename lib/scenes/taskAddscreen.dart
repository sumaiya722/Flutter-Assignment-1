import 'package:flutter/material.dart';

class AddTasks extends StatelessWidget {
  final TextEditingController _taskNameController = TextEditingController();
  final TextEditingController _taskDetailsController = TextEditingController();

  AddTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Task",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.black.withOpacity(0.7),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              controller: _taskNameController,
              decoration: InputDecoration(
                labelText: "Task Name",
                fillColor: Colors.grey.shade200,
                hintText: "Please enter the name of your task",
              ),
            ),
            TextFormField(
              controller: _taskDetailsController,
              decoration: InputDecoration(
                labelText: "Details",
                fillColor: Colors.grey.shade200,
                hintText: "Please enter details of your task",
              ),
              maxLines: 8,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final taskName = _taskNameController.text.trim();
                final taskDetails = _taskDetailsController.text.trim();
                if (taskName.isNotEmpty) {
                  final newTask = TaskData(
                    taskName: taskName,
                    details: taskDetails,
                    dateTime: DateTime.now(),
                  );
                  Navigator.of(context).pop(newTask);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Please enter a task name."),
                    duration: Duration(seconds: 2),
                  ));
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                child: Text(
                  "Add Task",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskData {
  final String taskName;
  final String details;
  final DateTime dateTime;

  TaskData({
    required this.taskName,
    required this.details,
    required this.dateTime,
  });
}