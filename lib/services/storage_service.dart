import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _keyTodaySeconds = 'ACCUMULATED_SECONDS_TODAY';
  static const String _keyLastDate = 'LAST_ACTIVE_DATE';
  static const String _keySelectedCategory = 'SELECTED_CATEGORY';
  static const String _keyWeeklyGoal = 'WEEKLY_GOAL_SECONDS';

  static Future<void> saveTodaySeconds(int seconds) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyTodaySeconds, seconds);
  }

  static Future<int> getTodaySeconds() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyTodaySeconds) ?? 0;
  }

  static Future<void> saveLastDate(String dateStr) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyLastDate, dateStr);
  }

  static Future<String?> getLastDate() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyLastDate);
  }

  static Future<void> saveWeeklyGoal(int seconds) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyWeeklyGoal, seconds);
  }

  static Future<int> getWeeklyGoal() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyWeeklyGoal) ?? 12600; // Mặc định 3h30m
  }

  static Future<void> saveSelectedCategory(String category) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keySelectedCategory, category);
  }

  static Future<String> getSelectedCategory() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keySelectedCategory) ?? 'Sách';
  }
}
