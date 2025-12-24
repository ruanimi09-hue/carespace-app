import 'package:flutter/material.dart';

class DailyCheckInScreen extends StatelessWidget {
  const DailyCheckInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text('Daily Check-In'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              const Text(
                'Take a moment',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'There’s no right or wrong answer. Just notice what’s here right now.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 32),

              _ReflectionCard(
                title: 'How are you feeling right now?',
                subtitle:
                    'You don’t need to change it — just notice and name it.',
                hintText: 'e.g., tired, calm, overwhelmed, neutral…',
              ),

              const SizedBox(height: 20),

              _ReflectionCard(
                title: 'What thoughts are showing up?',
                subtitle:
                    'Thoughts are not facts. You can simply observe them.',
                hintText: 'e.g., “I’m not doing enough”, “Today was heavy”…',
              ),

              const SizedBox(height: 20),

              _ReflectionCard(
                title: 'One small thing that mattered today',
                subtitle:
                    'This can be something meaningful, kind, or grounding.',
                hintText: 'e.g., helped a patient, finished a task, rested…',
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Later: save check-in data
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Save Check-In',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReflectionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String hintText;

  const _ReflectionCard({
    required this.title,
    required this.subtitle,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
          const SizedBox(height: 12),
          TextField(
            maxLines: 2,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
