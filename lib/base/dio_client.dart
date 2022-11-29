// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQC7LaC51ggy1Ix035nQ9v3V4p4J6Bal5Igg41bTA7W-_BVY6V_ZE6FmrhvShXVRKbgIwgtcIE3zQ3IZSytpOqIcxws37QUMsYNIrIjdq_rQmc4Ft6pq8NZOvawygD61FnX9T2L7-59bUk5WTSruYH9HyF-rPGpf4-RO6ovIfwOZz5ISzg8UlwfUePQPp1EzPpdXocA5vivYvMa3t-X-KOlgv1zAnED6bi9JIC6R3oG5bK1QwWZRilXxxrQwM0e7urfITS4lqpYbIKZ0UHd2F5kLLCm501OFjTivqJDE9kvE",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
