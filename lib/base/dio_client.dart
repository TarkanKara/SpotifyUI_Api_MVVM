// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQAo7H8qzJy8Z__d6T5HexJCNff9Ci-kam4zSdqg1alyio1GL427_4kd0bf0fUqW5NTvjIATrwcVLH57_hiCicXnW1-t1LWKpw5ZNcTB47qFxpWXNmxmRTg-V5FrKTndI3co4UeZ_KspTz4Xj1cRB_fAYfQOSRva_MUgqRkAt9A-jyBvZe6GlBK3P21xrV7z41DZGlGVYJ-Um-fhPvXslfjTuKEXCg-9NCJK-krYCBzKtkJvXBeNM1ruimE7pKv07Jlnlym7weZ3itzkc0uyeEzsSvQ7QFg",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
