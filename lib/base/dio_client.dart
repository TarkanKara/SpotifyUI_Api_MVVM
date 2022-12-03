// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQATvoLoND0EzItRr0xzETr4bmuhav25Wgu5Xo_Z5JoOu7fDxwIH2KpzUB6vqFNkxljNEEyrzbGu_abXJP4TmkvNGPS9Q6TewiLf4pKH42viCQpuHhnz4YhyErkKSZ1bGulbEJxjw-EThyftKnEqOWAurPafr3rnNh1qan78qfktrdGvtTFmHbu1nEx6oSWRHYS5BRCUdlviF7HdYYkesHJ1yFclQMvr4hDEQSv_WypufMpXifB8QPHBK8TEIbwO-JEAUK50__ZztufZ1THxgOAfrCkwlcMDK5U8uzx5Rp75",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
