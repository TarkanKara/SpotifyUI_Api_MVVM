// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQCjo2QE6isGVVK8DOOJKpdHm_k046DA3x-DpnrpDw-EVhZrBMgb9ykv3OQlTsVb81oD2OrPy7WuH38HmU-SXt8nHKJvTUxaF0LOF2uJTQ7YOCisadLH_jaESGOmXdPm3AZq-f8CsmlA1iQGHjeJdECqNxC-EiJuSp4CDZRDAxjE9uuiWkO09LZlz6y8ywUovjqNFkkMEywExYDQQMezQDAxlGGtncmD5bgsNAQ_aLYggIZREz4M-byU2-dY9KQm5vw9k1N7PudkKOfHHr5gPPlsDCbIr53QJVkD_hsvUISv",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
