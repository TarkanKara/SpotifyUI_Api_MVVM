// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQCDMOOVqQgIkmroUSIQjFLYHtun-ol3HJWgEKxePvQ9ScpFByCvEijbzyf18OrHn7DYkyXfTW3ugiAZ8PTnzNZ13kjXzMtvC0jE3i433fmxDZWxAN-9phmSmMUdcUnT--ZSYzrAFq5_fC8OTnKjAowYyxHrsoAt3jvCwpWe8Z3fe27-Mu4wZrox-6XGARMmVZ82qXxJQ7375qqimNjVGc4O5f7w-78WVv9AAkxt2H5t6CrbZB2nUlaSn3kS4MDlFFJsNLEDDPzbCYXaXvnKeBsZkp18EJzImkAiz5jpLLC0",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
