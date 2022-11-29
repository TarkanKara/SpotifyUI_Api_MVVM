// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQCZ8NwMfYi4cZwyFfl2GO0hIVGqu6vycN5j_rLvis2SlcCeWEhSpag04r2_3V5Qfl3dNfZ0ihDuEMi3ZbSY8aYIX6B2e6ZpK-SVOqma_JtQEAzedGMA0F1px66_7cT4rDMaBE7ej0YB_qAfq5g-eotw17Mej8sjRXs0PuaRibe5KsvGz5x4dJDmI07OA7LnSxFxKrumwPJxpuBc40MjN1deUgrfVie9Qe-qFUFqfcsMQmKsYgF4_j3bJMGxnTLncxO-oLQ35NZqpZdcEiWuXM61qW9jjXs4epeA4AYam9TN",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
