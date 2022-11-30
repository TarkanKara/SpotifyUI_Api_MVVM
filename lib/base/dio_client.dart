// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQDZQ_WQQZsv0VYdkEvw6X0iS1DASAqkayap7kt7_L83jodz5xKVW8-o2vpEZKrVhuUv5kysg4fZ2ZzMGLr02TGL26ObkeNl4v4yf9SragAHv91l9Xy1F2V8pUV9Wypfr6KDftt9a70S3pvWMDxd-1kBwECTHIEtPvKnGUK6ytCP7xdpcwkRa-6YH2XIds3AyzLyhCtkoabv-YWRXzAjJBoUZEut19Hq0a5kFE22t5wPJtzKOGlPhHs-s_ETrnmmjZiu58zv2duD2lM7crahvqwASkaRXOcslrWFeVrZ8N3H",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
