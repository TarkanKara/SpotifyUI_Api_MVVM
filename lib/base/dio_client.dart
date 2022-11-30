// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQDApeiXYwIse-CsAubu7FrK0aFbNbf2_Hl4sIl-afQ7nZhCaAkSpi5LikQFpREEkHEOw8d5V8Nc0cIiLbtHBvspf4stwA32e23WUforZOwOgH3UqeHfeOQyDdgE2c0PToVnKwxLlthScVArs1AkSuH0hAnU3mHszxciiv32KpH1e0fOer4eQHnkC21JwWko2lr0OaG4ophb7um1iulK-Odia2xu1xSs7DX_JbCZViE_EVzQWnpYH1zM-QlTVKR_f_633w99pnhxLvtva9S4Pq_UmexjBH4qczn5KvwTqzRm",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
