part of domainrobot_api;

///
/// Implementation of the trusted application specific api functions
///
class TrustedApplicationClient {
  ///
  /// Sends a trustedApplicationCreate request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<TrustedApplication> trustedApplicationCreate(
      String baseUrl, TrustedApplication payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson("$baseUrl/trustedapp", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient._handleException(e);
    }
    Map<String, dynamic> data = body["data"][0];
    return TrustedApplication.fromJson(data);
  }

  ///
  /// Sends a trustedApplicationUpdate request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<TrustedApplication> trustedApplicationUpdate(String baseUrl,
      TrustedApplication payload, Map<String, String> headers) async {
    String payloadAsString = json.encode(payload.toJson());
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.putForJson(
          "$baseUrl/trustedapp/${payload.uuid}", payloadAsString,
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient._handleException(e);
    }
    Map<String, dynamic> data = body["data"][0];
    return TrustedApplication.fromJson(data);
  }

  ///
  /// Sends a trustedApplicationDelete request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<void> trustedApplicationDelete(
      String baseUrl, String uuid, Map<String, String> headers) async {
    try {
      return await HttpUtils.deleteForJson("$baseUrl/trustedapp/$uuid",
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient._handleException(e);
    }
  }

  ///
  /// Sends a trustedApplicationInfo request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<TrustedApplication> trustedApplicationInfo(
      String baseUrl, String uuid, Map<String, String> headers) async {
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.getForJson("$baseUrl/trustedapp/$uuid",
          headers: headers);
    } catch (e) {
      AbstractDomainRobotClient._handleException(e);
    }
    Map<String, dynamic> data = body["data"][0];
    return TrustedApplication.fromJson(data);
  }

  ///
  /// Sends a trustedApplicationList request
  ///
  /// Throws an [HttpClientException] if the status code is not 200.
  ///
  static Future<List<TrustedApplication>> trustedApplicationList(
      String baseUrl, Query payload, Map<String, String> headers,
      {Map<String, String> queryParameters}) async {
    String payloadAsString = "";
    if (payload != null) {
      payloadAsString = json.encode(payload.toJson());
    }
    Map<String, dynamic> body;
    try {
      body = await HttpUtils.postForJson(
          "$baseUrl/trustedapp/_search", payloadAsString,
          queryParameters: queryParameters, headers: headers);
    } catch (e) {
      AbstractDomainRobotClient._handleException(e);
    }
    List data = body["data"];
    List<TrustedApplication> list = [];
    data.forEach((e) {
      TrustedApplication trustedApplication =
          new TrustedApplication.fromJson(e);
      list.add(trustedApplication);
    });
    return list;
  }
}