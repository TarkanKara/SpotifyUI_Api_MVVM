// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQCQ9RLIU0KoSXEzKJeKlcVgil48QXttpCh2Rg7MTrwIaDuzkLNLQfG9EZ7aRCSBeKhSiSDlms3m_M-15phy63wSYVUvRYJMXfYeVooBNEtdpPcLfFEZi7Fqrc0ebFTJ6cfW0tcl4NQrrx5SsSu9jmV53qD-CqPveatGdpxJxEIw0kKG5kPHDZQCQmv_GltmGaxm9c5X1ECeP0zUVz_TxLnHkr0LgNr-nbQdAnTITKbvO3-eQ4kVdbDXM8W3tpFKfv13Ej8mPvkKeBIeY-VSn2iMMv8GD9uDlsqhBb85C-41",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
