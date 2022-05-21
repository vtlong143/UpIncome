import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:up_income/app/data/api/api_result.dart';
import 'package:up_income/app/services/global.dart' as global;

const String COMMON_ERROR_MESSAGE = 'Có lỗi xảy ra, vui lòng thử lại sau.';

class BaseProvider extends GetConnect {
  void initProvider() {
    httpClient.baseUrl = dotenv.env["BASE_API"];
  }

  // ignore: non_constant_identifier_names
  Future<ApiResult> GET(String url) async {
    print('============================================================');
    print('[GET] ' + httpClient.baseUrl! + url);
    Logger().d('[TOKEN] ' + 'Bearer ${global.accessToken}');
    try {
      final response = await get(url, headers: {'Authorization': 'Bearer ${global.accessToken}'});
      if (response.statusCode == 401) {
        // appSnackbar("Phiên đăng nhập đã hêt hạn, vui lòng đăng nhập lại", type: SnackbarType.error);
        Get.until((route) => route.isFirst);
        // Get.offNamed(Routes.LOGIN);
      }
      if (response.body != null) {
        var result = response.body;
        Logger().d(result);
        if (response.bodyString == "Unauthorized") {
          return ApiResult<dynamic>(
            error: "Unauthorized",
            data: null,
          );
        }
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      print(error);
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  Future<ApiResult> GETPARAM(String url, dynamic body) async {
    print('============================================================');
    print('[GET] ' + httpClient.baseUrl! + url);
    Logger().d('[TOKEN] ' + 'Bearer ${global.accessToken}');
    try {
      final response =
          await httpClient.request(url, 'get', headers: {'Authorization': 'Bearer ${global.accessToken}'}, body: body);

      if (response.body != null) {
        var result = response.body;
        Logger().d(result);
        if (response.bodyString == "Unauthorized") {
          return ApiResult<dynamic>(
            error: "Unauthorized",
            data: null,
          );
        }
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      print(error);
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  // ignore: non_constant_identifier_names
  Future<ApiResult> POST(String url, dynamic body) async {
    print('============================================================');
    print('[POST] ' + httpClient.baseUrl! + url);
    print('[Bearer Token] ' + '${global.accessToken}');
    print('[PARAMS] ' + body.toString());
    try {
      final response = await post(url, body, headers: {
        'Authorization': 'Bearer ${global.accessToken}',
      });

      if (response.body != null) {
        var result = response.body;
        Logger().d(result);
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  Future<ApiResult> POSTWITHHEADER(String url, dynamic body, dynamic header) async {
    print('============================================================');
    print('[POST] ' + httpClient.baseUrl! + url);
    print('[Bearer Token] ' + '${global.accessToken}');
    print('[PARAMS] ' + body.toString());
    try {
      final response = await post(url, body, headers: header);

      if (response.body != null) {
        var result = response.body;
        Logger().d(result);
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  Future<ApiResult> POSTAUDIO(String url, dynamic body) async {
    print('============================================================');
    print('[POST] ' + httpClient.baseUrl! + url);
    // print('[Bearer Token] ' + '${globals.accessToken}');
    print('[PARAMS] ' + body.toString());
    try {
      final response = await post(url, body, headers: {
        'Content-Type': 'application/json',
      });

      if (response.body != null) {
        var result = response.body;
        Logger().d(result);
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  // ignore: non_constant_identifier_names
  Future<ApiResult> PATCH(String url, dynamic body) async {
    print('============================================================');
    print('[PUT] ' + httpClient.baseUrl! + url);
    print('[Bearer Token] ' + '${global.accessToken}');
    print('[PARAMS] ' + body.toString());
    try {
      final response = await patch(url, body, headers: {'Authorization': 'Bearer ${global.accessToken}'});

      if (response.body != null) {
        var result = response.body;
        Logger().d(result);
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  Future<ApiResult> PATCHIMAGE(String url, dynamic body) async {
    print('============================================================');
    print('[PUT] ' + httpClient.baseUrl! + url);
    print('[Bearer Token] ' + '${global.accessToken}');
    print('[PARAMS] ' + body.toString());
    try {
      final response = await patch(url, body,
          headers: {'Authorization': 'Bearer ${global.accessToken}', 'Content-Type': 'multipart/form-data'});

      if (response.body != null) {
        var result = response.body;
        Logger().d(result);
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  // ignore: non_constant_identifier_names
  Future<ApiResult> PUT(String url, dynamic body) async {
    print('============================================================');
    print('[PUT] ' + httpClient.baseUrl! + url);
    print('[Bearer Token] ' + '${global.accessToken}');
    print('[PARAMS] ' + body.toString());
    try {
      final response = await put(url, body, headers: {'Authorization': 'Bearer ${global.accessToken}'});

      if (response.body != null) {
        var result = response.body;
        Logger().d(result);
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  // ignore: non_constant_identifier_names
  Future<ApiResult> DEL(String url) async {
    print('============================================================');
    print('[Bearer Token] ' + '${global.accessToken}');
    print('[DELETE] ' + httpClient.baseUrl! + url);

    try {
      final response = await delete(url, headers: {'Authorization': 'Bearer ${global.accessToken}'});

      if (response.body != null) {
        var result = response.body;
        Logger().d(result);
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  Future<ApiResult> DELETHTTP(String urlDel, dynamic body) async {
    print('============================================================');
    print('[Bearer Token] ' + '${global.accessToken}');
    print('[DELETE] ' + httpClient.baseUrl! + urlDel);
    try {
      final url = Uri.parse(httpClient.baseUrl! + urlDel);
      final request = http.Request("DELETE", url);

      request.headers
          .addAll(<String, String>{"Accept": "application/json", 'Authorization': 'Bearer ${global.accessToken}'});
      request.body = jsonEncode(body);
      final response = await request.send();
      final resultRes = await http.Response.fromStream(response);
      if (resultRes.body != null) {
        var result = resultRes.body;
        // Logger().d(result);
        return ApiResult<dynamic>(
          error: "Error",
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: "Delete error",
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }

  // ignore: non_constant_identifier_names
  Future<ApiResult> DELETE(String url, dynamic body) async {
    print('============================================================');
    print('[Bearer Token] ' + '${global.accessToken}');
    print('[DELETE] ' + httpClient.baseUrl! + url);
    try {
      final response = await httpClient.request(url, 'delete',
          headers: {'Authorization': 'Bearer ${global.accessToken}'}, body: body);

      if (response.body != null) {
        var result = response.body;
        // Logger().d(result);
        return ApiResult<dynamic>(
          error: response.isOk ? '' : (result['message'] ?? COMMON_ERROR_MESSAGE),
          data: result,
        );
      } else {
        return ApiResult<dynamic>(
          error: response.statusText ?? '',
        );
      }
    } on Exception catch (exception) {
      print('[EXCEPTION] ' + exception.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: exception.toString(),
      );
    } catch (error) {
      print('[ERROR] ' + error.toString());
      print('============================================================');
      return ApiResult<dynamic>(
        error: error.toString(),
      );
    }
  }
}
