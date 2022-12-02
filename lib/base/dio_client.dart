// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQB-STR4KB-hQZ-Lp-t0ZNBExk30LubM1O8y-x6lmusgfZvOq1cCnoIm3GJPlO1kEiQNpl0c0MNJs1g87ohg0z3lVvRmfz-AjPqY9_H1En8lZmEoCHLpDXbC0nSX8n8tCrygcUWnsKpNvSTj-ZIVOidvcWpgL5j5ae8bkTX7Lnn3wB3F6KO6PytXlS6T1uy3IdZNzrH_9XEuun238lEYOtU",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
