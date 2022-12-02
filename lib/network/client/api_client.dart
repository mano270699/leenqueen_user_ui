import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../utils/token_util.dart';
import '../services_urls.dart';

class ApiClient {
  static Map<String, String> headers(
      {String contentType = 'application/json'}) {
    var mHeaders = {
      HttpHeaders.contentTypeHeader: contentType,
    };
    // mHeaders["lang"] = SettingsSession.instance().languageCode != null
    //     ? SettingsSession.instance().languageCode
    //     : "ar";

    // loading auth token
    if (TokenUtil.getTokenFromMemory().isNotEmpty) {
      // mHeaders[HttpHeaders.authorizationHeader] =
      //     "Bearer ${TokenUtil.getTokenFromMemory()}";
      mHeaders['access_token'] = TokenUtil.getTokenFromMemory();
    }

    return mHeaders;
  }

  static Future<Response> getRequest(
      String endPoint, Map<String, dynamic>? queryParams) async {
    //create url with (baseUrl + endPoint) and query Params if any

    // Uri url = Uri(
    //   scheme: ServicesURLs.development_environment_scheme,
    //   host: ServicesURLs.development_environment_without_http,
    //   //port: ServicesURLs.development_environment_port,
    //   path: endPoint,
    //   queryParameters: queryParams,
    // );
    String url = ServicesURLs.development_environment + endPoint;
    //network logger
    log(url.toString() + "\n" + headers().toString());
    //print(url.queryParameters.toString());
    //GET network request call
    final response = await http.get(
        Uri.http(ServicesURLs.development_environment, endPoint),
        headers: headers());

    return response;
  }

  static Future<http.Response> postRequest(String endPoint, dynamic requestBody,
      {bool isMultipart = false,
      List<http.MultipartFile>? multiPartValues}) async {
    //create url of (baseUrl + endPoint)

    String url = ServicesURLs.development_environment + endPoint;

    // //network logger
    // print(url + "\n" + headers().toString());
    // if (requestBody != null) log(requestBody.toString());
    // //POST network request call

    var response;
    if (!isMultipart) {
      response = await http.post(
          Uri.http(ServicesURLs.development_environment, endPoint),
          headers: headers(),
          body: requestBody);
    } else {
      log("*****MultiPartRequest*****");

      var uri = Uri.parse(
        "http://$url",
      );

      Map<String, dynamic> p = jsonDecode(requestBody);

      Map<String, String> convertedMap = {};
      p.forEach((key, value) {
        convertedMap[key.toString()] = value.toString();
      });

      var request = http.MultipartRequest('POST', uri)
        ..headers.addAll(headers(contentType: 'multipart/form-data'))
        ..fields.addAll(convertedMap)
        ..files.addAll(multiPartValues!);

      response = await http.Response.fromStream(await request.send());
    }
    //network logger
    print(url +
        "\n" +
        headers(
                contentType:
                    !isMultipart ? 'application/json' : 'multipart/form-data')
            .toString());
    if (requestBody != null) log("requestBody:${requestBody.toString()}");
    //POST network request call
    return response;
  }

  static Future<http.Response> putRequest(String endPoint, dynamic requestBody,
      {bool isMultipart = false,
      List<http.MultipartFile>? multiPartValues}) async {
    //create url of (baseUrl + endPoint)
    String url = ServicesURLs.development_environment + endPoint;
    //network logger
    // print(url + "\n" + headers().toString());
    // if (requestBody != null) log(requestBody.toString());
    //POST network request call

    var response;
    if (!isMultipart) {
      response = await http.put(
          Uri.http(ServicesURLs.development_environment, endPoint),
          headers: headers(),
          body: requestBody);
    } else {
      log("****MultiPart*****");
      var uri = Uri.parse(
        "http://$url",
      );
      Map<String, dynamic> p = jsonDecode(requestBody);
      Map<String, String> convertedMap = {};
      p.forEach((key, value) {
        convertedMap[key] = value;
      });

      var request = http.MultipartRequest('PUT', uri)
        ..headers.addAll(headers(contentType: 'multipart/form-data'))
        ..fields.addAll(convertedMap)
        ..files.addAll(multiPartValues!);

      response = await http.Response.fromStream(await request.send());
    }
    print(url +
        "\n" +
        headers(
                contentType:
                    !isMultipart ? 'application/json' : 'multipart/form-data')
            .toString());
    if (requestBody != null) log("requestBody:${requestBody.toString()}");

    return response;
  }

  static Future<Response> deleteRequest(
      String endPoint, Map<String, dynamic>? queryParams) async {
    //create url with (baseUrl + endPoint) and query Params if any
    Uri url = Uri(
      scheme: ServicesURLs.development_environment_scheme,
      host: ServicesURLs.development_environment_without_http,

      //port: ServicesURLs.development_environment_port,
      path: endPoint,
      queryParameters: queryParams,
    );
    //String url = ServicesURLs.development_environment + endPoint;
    //network logger
    log(url.toString() + "\n" + headers().toString());
    //print(url.queryParameters.toString());
    //GET network request call
    final response = await http.delete(url, headers: headers());

    return response;
  }
}
