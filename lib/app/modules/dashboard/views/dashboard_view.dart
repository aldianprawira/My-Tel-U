import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_telu/app/constants/colors.dart';
import 'package:my_telu/app/modules/home/views/home_view.dart';
import 'package:my_telu/app/modules/news/views/news_view.dart';
import 'package:my_telu/app/modules/notification/views/notification_view.dart';
import 'package:my_telu/app/modules/timeline/views/timeline_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomeView(),
                NewsView(),
                TimelineView(),
                NotificationView(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.tabIndex,
              onTap: (value) => controller.changeTabIndex(value),
              unselectedItemColor: appGrey,
              selectedItemColor: appRed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                _bottomNavigationBarItem(
                  icon: Icons.home,
                  label: "Beranda",
                ),
                _bottomNavigationBarItem(
                  icon: Icons.newspaper,
                  label: "Berita",
                ),
                _bottomNavigationBarItem(
                  icon: Icons.timeline,
                  label: "Timeline",
                ),
                _bottomNavigationBarItem(
                  icon: Icons.notifications,
                  label: "Pemberitahuan",
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
