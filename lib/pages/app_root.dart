import 'package:apod/pages/app_root_controller.dart';
import 'package:apod/pages/home_page/today_page.dart';
import 'package:apod/pages/about_page/about_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'archived_page/archived_page.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  final _controller = AppRootController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Observer(builder: (_) {
        return CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.today),
              label: 'Today',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.list_bullet_below_rectangle),
              label: 'Archived',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'About',
            ),
          ],
          currentIndex: _controller.selectedIndex,
          onTap: _controller.setSelectedIndex,
        );
      }),
      body: Observer(builder: (_) {
        return IndexedStack(
          index: _controller.selectedIndex,
          children: const [
            TodayPage(),
            ArchivedPage(),
            AboutPage(),
          ],
        );
      }),
    );
  }
}
