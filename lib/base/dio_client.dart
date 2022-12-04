// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQD9qDgO5x-1-U_96E-FUqQdIONIcut1fumvUb0TeZAPeG0vfAo8KLAwtC9d0JKU8LxMbMEF1yW3I-BdUyJhlz18vXy6IVDgKgHNsu1jTA_chhVMybR79W7uHe4d8XGEzuI2LMAykBawWtLbAu0I0zEV_Gc-jnsD7B3FTRlvEp2tR81BI5gWrhA4SRztSVwpxexRz0pxH7yTx1pPNCrDRCo9uaaPvZwpmb2mviysrURtx_j_cD8QNke5KIazggw-F539Qq98RqxhSqgcatbqNbiPQo46mLUgfqfgI25w8k4Q",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
