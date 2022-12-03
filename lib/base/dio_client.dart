// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQCTt65nHXUww6I5JQ8RqaI3lgjvmRiQx2kvI72ojs7UEu3eBiFHln1p5x-696pRGJU-d8iNqF8DE0yzAV0taB4YgngknScltRyGdjUF94gxBFN3a2ZVmzze9btxfA7yWwcTeraVDjMFmowRvtLGg_Fo7LpPvBqLolzb8aKMt0BVefWtH1A8YukAUVbhKE5aCcO3GWCl-RI0V942ESjzPko7sWX3gYUgap7q7d6VKIApJK259T08IocBSGGdYfoxg6OpPHC50aYp9Zr7-0b063oZlh9KL08jYX5S9ZdxNaDu",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
