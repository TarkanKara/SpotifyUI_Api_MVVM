// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQAJRii8QUEHhTMEAXIg9tOH5MHdEd_bzw_nqjDRvD3bLG94vec5cK4IIfnKA9DRzRSWroNKUFMOtOncOhZYKwsPoGK-Va-2jDi9FpSx_L2F5n6kPE-C46mmwAMhfqAqCqpMndpPtBPbXuTaC-tSZkJ43yHmY4SSZJIjn8jv-2e2Ar1dHtdnXaLw3KoU70EyHqQMnRRTmWcg3zOL-faMn5HY6Qh0FrgDWZjVsKjiIhAsDcqsxAiBTmR7V0W4DXsyjkn1IjY4kpwnjKvw4e-AFG9Ws9CwqdvLsdd33dLwOVER",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
