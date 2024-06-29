import 'package:flutter/material.dart';




class TaskCard extends StatefulWidget {
  final String taskName;
  final String dateTime;

  TaskCard({
    required this.taskName,
    required this.dateTime,
  });

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  String status = 'Pending';
  Color statusColor = Colors.purple;

  void toggleStatus() {
    setState(() {
      if (status == 'Pending') {
        status = 'Completed';
        statusColor = Colors.blue;
      } else {
        status = 'Pending';
        statusColor = Colors.purple;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.taskName,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                widget.dateTime,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: toggleStatus,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                status,
                style: TextStyle(
                  fontSize: 16,
                  color: statusColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
