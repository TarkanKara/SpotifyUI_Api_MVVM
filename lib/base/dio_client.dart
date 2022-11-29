// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQAkfM0yg_DzyGX1Zq0HK7cstUbfFLpxgCMsiSfefUrpkFcN8-Euwv2ezZJKVWx1XDcb_LQ8UmHJe2Bxea-9tW1WJMktlWi2dW9h0_BrO45SpPjukC3o1bLODCMIkZuGWG9nXEm-AyKNb4FvfIiRO-uQwBMSew0X79xDnbJBHLUX2Sh3OSKWSDwVIe526h1K4LFC0xKKc-z_RinZdEI88HBQ_daVyR0DKWGYi_iscZzV5CzP_CU9PmHkktMV1XmKrPWeZVnGKX_FJvy00HfQ31Wgx--r5JkNIX9_mzTcI1dC",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
