import 'package:flutter/material.dart';
import 'daily_checkin_screen.dart';
import '../services/local_user_service.dart';
import 'checkin_history_screen.dart';



class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  String getSubtitleText() {
  final user = LocalUserService.user;

  if (user == null) {
    return 'Welcome back. Take a moment for yourself.';
  }

  if (user.role == 'student') {
    return 'Balancing learning and pressure isn’t easy. This space is for you.';
  }

  if (user.role == 'professional') {
    return 'Caring for others can be demanding. Take a moment to pause.';
  }

  return 'Welcome back. Take a moment for yourself.';
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text('CareSpace'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),

            const Text(
              'Welcome back',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
  getSubtitleText(),
  style: const TextStyle(
    fontSize: 16,
    color: Colors.black54,
  ),
),


            const SizedBox(height: 32),

            _DashboardCard(
              title: 'Daily Check-In',
              subtitle:
                  'Pause for a moment and notice what’s present right now.',
              icon: Icons.self_improvement_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DailyCheckInScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            _DashboardCard(
              title: 'Your Insights',
              subtitle:
                  'View gentle patterns over time. No judgement, just awareness.',
              icon: Icons.bar_chart_outlined,
              onTap: () {
                // Later: navigate to insights screen
              },
            ),

            const SizedBox(height: 20),

            _DashboardCard(
              title: 'Reflections',
              subtitle:
                  'Revisit what mattered to you on previous days.',
              icon: Icons.book_outlined,
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => const CheckInHistoryScreen(),
    ),
  );
},


class _DashboardCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _DashboardCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, size: 34, color: Colors.blueGrey),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
