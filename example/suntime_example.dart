import 'package:suntime/suntime.dart';

void main() {
  final sun = Sun(9.928069, -84.090725);
  final today = DateTime.now();

  print(
      'Sunrise UTC time: ${sun.getSunriseTime(date: today.add(const Duration(days: 1)))}');
  print(
      'Sunrise Costa Rica time: ${sun.getLocalSunriseTime('America/Costa_Rica', date: today.add(const Duration(days: 1)))}');
  print(
      'Sunrise Halifax time: ${sun.getLocalSunriseTime('America/Halifax', date: today.add(const Duration(days: 1)))}');
  print('-' * 50);
  print('Sunset UTC time: ${sun.getSunsetTime()}');
  print(
      'Sunset Costa Rica time: ${sun.getLocalSunsetTime('America/Costa_Rica')}');
  print('Sunset Halifax time: ${sun.getLocalSunsetTime('America/Halifax')}');

  // prints...
  // Sunrise UTC time: 2022-06-07 11:15:00.000Z
  // Sunrise Costa Rica time: 2022-06-07 05:15:00.000-0600
  // Sunrise Halifax time: 2022-06-07 08:15:00.000-0300
  // --------------------------------------------------
  // Sunset UTC time: 2022-06-06 23:55:00.000Z
  // Sunset Costa Rica time: 2022-06-06 17:55:00.000-0600
  // Sunset Halifax time: 2022-06-06 20:55:00.000-0300

  // Managing possible errors.
  final somePlaceInNorthPole = Sun(87.55, 0.1);

  DateTime? sunrise;
  try {
    sunrise = somePlaceInNorthPole.getSunriseTime(date: today);
  } catch (e) {
    print('-' * 50);
    print('SunTimeException ocurred: $e');
  } finally {
    print('Sunrise: $sunrise');
  }

  // prints...
  // --------------------------------------------------
  // SunTimeException ocurred: The sun never rises on this location (on the specified date)
  // Sunrise: null
}
