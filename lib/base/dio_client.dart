// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQD1gqpkWEEJ1DjiF6QtEGacgkcnHraGlFfsboAq-fZa93LbvjctSJql-W1uoJBwvW1AJvFygCKgRxmI7T5_Xs2EvLEM1IPQ8ehz4ahI2NR78YCQkqH_fx_lWSw1Ii6hsP_Ltq6Fjv0uzKmhbR_OK6hTVTuFGnNUj1Fzk3ieIfdySqvqJ1PegTF2BAG42sBy5ckbjbxqhBhiF8pgnswE_AQmRs0l0-aHQXRrO9cktCQBNNeyvdsZp0vvvz8OKx-EXd1hi5_MuOsfcd890jhF24xkl9SBd6QjJhKzunV75dPx",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
