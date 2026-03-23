import 'package:flutter/material.dart';
import 'package:jalan_yuk/core/core.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const JalanYukAppBar(title: 'Profile', showBackButton: false),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          child: Column(
            children: [
              _buildProfileHeader(),
              const SizedBox(height: 14),
              _buildMenuCard(),
              const SizedBox(height: 16),
              const JalanYukButton(
                label: 'Logout',
                variant: JalanYukButtonVariant.outline,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: JalanYukColors.border),
      ),
      child: const Column(
        children: [
          CircleAvatar(
            radius: 34,
            backgroundColor: JalanYukColors.emeraldSoft,
            child: Icon(
              Icons.person_rounded,
              size: 36,
              color: JalanYukColors.emeraldDark,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Welcome, John',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: JalanYukColors.textPrimary,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'john@email.com',
            style: TextStyle(fontSize: 15, color: JalanYukColors.textSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: JalanYukColors.border),
      ),
      child: Column(
        children: const [
          _ProfileMenuTile(label: 'Personal Info', icon: Icons.person_rounded),
          Divider(height: 1, color: JalanYukColors.border),
          _ProfileMenuTile(
            label: 'Payment Methods',
            icon: Icons.wallet_rounded,
          ),
          Divider(height: 1, color: JalanYukColors.border),
          _ProfileMenuTile(
            label: 'Notifications',
            icon: Icons.notifications_none_rounded,
          ),
          Divider(height: 1, color: JalanYukColors.border),
          _ProfileMenuTile(label: 'Support', icon: Icons.help_outline_rounded),
        ],
      ),
    );
  }
}

class _ProfileMenuTile extends StatelessWidget {
  const _ProfileMenuTile({required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      leading: Icon(icon, color: JalanYukColors.emeraldDark),
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: JalanYukColors.textPrimary,
        ),
      ),
      trailing: const Icon(
        Icons.chevron_right_rounded,
        color: JalanYukColors.hint,
      ),
      onTap: () {},
    );
  }
}
