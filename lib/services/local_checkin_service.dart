import '../models/daily_checkin_model.dart';

class LocalCheckInService {
  static final List<DailyCheckIn> _checkIns = [];

  static void addCheckIn(DailyCheckIn checkIn) {
    _checkIns.add(checkIn);
  }

  static List<DailyCheckIn> getAllCheckIns() {
    return _checkIns;
  }
}
