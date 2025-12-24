class DailyCheckIn {
  final DateTime date;
  final String feeling;
  final String thoughts;
  final String valueAction;

  DailyCheckIn({
    required this.date,
    required this.feeling,
    required this.thoughts,
    required this.valueAction,
  });

  Map<String, dynamic> toMap() {
    return {
      'date': date.toIso8601String(),
      'feeling': feeling,
      'thoughts': thoughts,
      'valueAction': valueAction,
    };
  }

  factory DailyCheckIn.fromMap(Map<String, dynamic> map) {
    return DailyCheckIn(
      date: DateTime.parse(map['date']),
      feeling: map['feeling'],
      thoughts: map['thoughts'],
      valueAction: map['valueAction'],
    );
  }
}
