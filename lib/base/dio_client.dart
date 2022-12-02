// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQA7jM4eWmVw-_gZRy228yFWMt_ADchIlNbr5N7fKyZ_YTo4TuUglaiQX91ER8MqJuhZasfPTU2ui4n6MZqWh-mPr0hVGRYGFXoWRo5ZN9KMDqEwt70hHPX7Z1Lew0k_EnlUYQvwPddnD4NtWOxMskcJKYv9CabpueGtdL8vXuZ6ihnp8WVrGIILICchCy_ztp8cTL8ohrfIF6U7BEJ3cglGonY8oabG4TGvUaufQ7qD3mz3GftuNUeWhENNspiK5dZKEMlfpD_tSY54kiqkWiaVtoYcKpKBcWlf9ZgOrvOj",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
