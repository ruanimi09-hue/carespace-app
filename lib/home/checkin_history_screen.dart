import 'package:flutter/material.dart';
import '../services/local_checkin_service.dart';
import '../models/daily_checkin_model.dart';

class CheckInHistoryScreen extends StatelessWidget {
  const CheckInHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DailyCheckIn> checkIns =
        LocalCheckInService.checkIns.reversed.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Reflections'),
      ),
      body: checkIns.isEmpty
          ? const Center(
              child: Text(
                'No check-ins yet.\nYour reflections will appear here.',
                textAlign: TextAlign.center,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: checkIns.length,
              itemBuilder: (context, index) {
                final checkIn = checkIns[index];

                return Card(
  elevation: 2,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(14),
  ),

                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
