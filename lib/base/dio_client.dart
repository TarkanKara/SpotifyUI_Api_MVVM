// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class BaseServicesDio {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://api.spotify.com/v1/",
          headers: {
            "Authorization":
                "Bearer BQAdA7u7e_eFH2W9x47981rwlavtR7xQijbRKqzXvgsgOyAJTTYu2_C7rghHXHLMAL4mRxEk6AeX9KnFSNKpv3iEWkO57Fo8fvIdpPlurgr51Vq6OwD-1zkErTSO0YupIXnN4j5N3WTu9V7jsjGMCUt5Zb65xjH4PXz3ZTxWJJjM_zZXm7pI1w3AxhO_jjns1Rc_UBqxy-2bZu35K4Rn-oVp-bj6EnTeDr6qarB0Pg6ceVDilED-YpmCn-biJHVWk2TO4EZvI6NnXQuBi3r0wSzgEnVpgLSSvLbewdIVnK8q",
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          connectTimeout: 5000,
          receiveTimeout: 3000,
        ),
      )..interceptors;
}
