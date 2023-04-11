import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../controllers/timeline_controller.dart';

class TimelineView extends GetView<TimelineController> {
  const TimelineView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Timeline"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 15),
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          width: 150,
          height: 150,
          margin: const EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
          ),
          decoration: BoxDecoration(
            color: appWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.teal,
                ),
                title: const Text("I Ketut Yasa Seniarta"),
                subtitle: const Text("3 menit yang lalu"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: appRed,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
