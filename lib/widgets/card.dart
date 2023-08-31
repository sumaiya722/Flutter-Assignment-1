import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String taskName;
  final String details;
  final DateTime dateTime;
  final int taskNumber;

  const Cards({super.key,
    required this.taskName,
    required this.details,
    required this.dateTime,
    required this.taskNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Task $taskNumber: $taskName",
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
          ),
          Text(details),
          Align(
            alignment: Alignment.centerRight,
            child: Text(dateTime.toString().split(".")[0]),
          ),
        ],
      ),
    );
  }
}