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
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _formatDate(checkIn.date),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Feeling: ${checkIn.feeling}'),
                        const SizedBox(height: 8),
                        Text('Thoughts: ${checkIn.thoughts}'),
                        const SizedBox(height: 8),
                        Text('What mattered: ${checkIn.value}'),
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
