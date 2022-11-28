// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQApaWba5Fxyx7ByFXOANukCBXjncF9inp5WxYxHuN3qvbT2hTfa2szz4xyZZLNiq4egieeFhTVh3YDX1nd9SqiFDNL6UsThjyEMR6hJiJ4UY0rBY_P3UN8ZxHNwkkKlh5hWDPpLdGDiFlNVXQ1Mxc_Tc3VqfnMs9vJwhxGDIB3XYz1aC3nr5UCmP3FcqgeC5rG0lZITFb-_0KE_1gTo1JD12MenQpcKFHe4ZCjJml7A5L98VXYRWDZ_9PuS48Dei5oSg7CdqDEtK-ochRFJts-DlPYHGYWs0wSzYLBl5O1x",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
