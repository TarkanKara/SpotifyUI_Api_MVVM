// ignore_for_file: unused_local_variable, division_optimization

class TimeStampt {
  currentTimestamp(int? timestamp) {
    int seconds = (timestamp! / 10000).toInt();
    int minutes = ((timestamp / (1000 * 60)) % 60).toInt();
    int hours = ((timestamp / (1000 * 60 * 60) % 24)).toInt();

    return "$minutes: $seconds";
  }
}
