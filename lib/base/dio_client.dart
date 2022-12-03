// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQCdNbIuAzyTjd1QC9BPAHxmuGsOxqAaxY4OlAUwTCrC-mmvtmJj07Urqk74i3MwZd48Oc3T04oh6Fh-Ey3CnnBxioN9sNOMZyU-SeBRryHQTMp0r26Xcyz8Fzo_T1dQtq282IUlH18VgUqxEjAEUjY1kdbeZNBPQhRjucTLm5xx65mYEGhAJ62Y886yIU7yCnLp91NkTSIpnv8YYkDya5e8hqMUQCz62NjQRABM4ETrZgKm2XiUzCabgvE2yBpVL7imOYGd5M7n2ull0A2VitG5rzBQ1kVhlXmd0-uulj1J",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
