import 'package:flutter/material.dart';

import 'jalan_yuk_colors.dart';

class JalanYukBottomNavigationBar extends StatelessWidget {
  const JalanYukBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 6,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.travel_explore_outlined),
          selectedIcon: Icon(Icons.travel_explore_rounded),
          label: 'Explore',
        ),
        NavigationDestination(
          icon: Icon(Icons.book_online_outlined),
          selectedIcon: Icon(Icons.book_online_rounded),
          label: 'Bookings',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline_rounded),
          selectedIcon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
    ).withSelectedStyle(context);
  }
}

extension _NavigationBarStyle on NavigationBar {
  Widget withSelectedStyle(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarTheme.of(context).copyWith(
        indicatorColor: JalanYukColors.emeraldSoft,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final isSelected = states.contains(WidgetState.selected);
          return TextStyle(
            fontSize: 12,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            color: isSelected
                ? JalanYukColors.emeraldDark
                : JalanYukColors.textSecondary,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          final isSelected = states.contains(WidgetState.selected);
          return IconThemeData(
            color: isSelected
                ? JalanYukColors.emeraldDark
                : JalanYukColors.textSecondary,
            size: 22,
          );
        }),
      ),
      child: this,
    );
  }
}
