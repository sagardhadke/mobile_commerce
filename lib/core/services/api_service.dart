import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_commerce/core/exceptions/app_exceptions.dart';

class APIService {
  getAPI() {}

  Future<dynamic> postAPI({
    required String url,
    Map<String, dynamic>? mBody,
  }) async {
    Uri uri = Uri.parse(url);

    try {
      var response = await http.post(
        uri,
        body: mBody != null ? jsonEncode(mBody) : null,
      );
      return returnResponse(response);
    } on SocketException catch (e) {
      throw NoInternetException(msg: e.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        {
          debugPrint("Success");
          var data = jsonDecode(response.body);
          return data;
        }

      case 400:
        {
          throw BadRequestException(
            msg: "with status code ${response.statusCode}",
          );
        }

      case 401:
        {
          throw UnauthorizedException(
            msg: "with status code ${response.statusCode}",
          );
        }

      case 404:
        {
          throw NotFoundException(
            msg: "with status code ${response.statusCode}",
          );
        }

      case 500:
      default:
        {
          throw ServerException(msg: "with status code ${response.statusCode}");
        }
    }
  }
}
