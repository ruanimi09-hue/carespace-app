import 'package:flutter/material.dart';
import '../models/daily_checkin_model.dart';
import '../services/local_checkin_service.dart';

class DailyCheckInScreen extends StatefulWidget {
  const DailyCheckInScreen({super.key});

  @override
  State<DailyCheckInScreen> createState() => _DailyCheckInScreenState();
}

class _DailyCheckInScreenState extends State<DailyCheckInScreen> {
  final feelingController = TextEditingController();
  final thoughtsController = TextEditingController();
  final valueController = TextEditingController();

  void saveCheckIn() {
    final checkIn = DailyCheckIn(
      date: DateTime.now(),
      feeling: feelingController.text,
      thoughts: thoughtsController.text,
      value: valueController.text,
    );

    LocalCheckInService.add(checkIn);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Check-In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: feelingController,
              decoration: const InputDecoration(
                labelText: 'How are you feeling right now?',
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: thoughtsController,
              decoration: const InputDecoration(
                labelText: 'What thoughts are present?',
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                labelText: 'One small thing that mattered today',
              ),
            ),
            const SizedBox(height: 32),

            ElevatedButton(
              onPressed: saveCheckIn,
              child: const Text('Save'),
              style: ElevatedButton.styleFrom(
  backgroundColor: Colors.blueGrey,
  padding: const EdgeInsets.symmetric(vertical: 14),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(14),
  ),
),
            ),
          ],
        ),
      ),
    );
  }
}
