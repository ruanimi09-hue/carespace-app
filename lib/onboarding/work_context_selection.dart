import 'package:flutter/material.dart';

class WorkContextSelectionScreen extends StatelessWidget {
  const WorkContextSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text('Work Context'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Your current work setting',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'This helps CareSpace understand the kind of demands you may be facing.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 32),

            _ContextCard(
              title: 'Clinical',
              subtitle: 'Hospitals, clinics, patient-facing roles',
              icon: Icons.local_hospital_outlined,
              onTap: () {
                // Later: save context = clinical
              },
            ),

            const SizedBox(height: 16),

            _ContextCard(
              title: 'Academic / Student',
              subtitle: 'Classes, exams, research, training',
              icon: Icons.menu_book_outlined,
              onTap: () {
                // Later: save context = academic
              },
            ),

            const SizedBox(height: 16),

            _ContextCard(
              title: 'Shift-based Work',
              subtitle: 'Night shifts, long hours, rotating schedules',
              icon: Icons.schedule_outlined,
              onTap: () {
                // Later: save context = shift
              },
            ),

            const SizedBox(height: 16),

            _ContextCard(
              title: 'Non-clinical / Administrative',
              subtitle: 'Management, documentation, coordination roles',
              icon: Icons.work_outline,
              onTap: () {
                // Later: save context = non-clinical
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ContextCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _ContextCard({
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
