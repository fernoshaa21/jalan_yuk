import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jalan_yuk/core/core.dart';

class DashboardShellView extends StatelessWidget {
  const DashboardShellView({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: JalanYukBottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
