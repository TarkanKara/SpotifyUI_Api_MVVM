// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQDMSifAZ-65Fme97nnotbLjPrseX0Wi6q8cNFMCSKya5hFN1nZiid4F0pM89If2ETLOM_HXR1a_FL04ZoczjTshxJA-nCnxnlK0oAWWUEeZu_JDcbR_uJwue2SEDAEE0XZiTmYPHtirc7bIfwyBkxdFM_IJyUiOYa9ZQpAk6jFN_HXGEV1uZnFpQ5xfFRX5fmNuo5tjgfybUvcJMT-_WI61ZGjWO24fZUYqzAlNr6p_w-luJbW_bqXkLmocI52ZnH38k5gcN-BXLz0FJ-8AQHWDPCZzWMYnjn7xAn1vJ8-U",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
