import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start binance Group Code

class BinanceGroup {
  static String baseUrl = 'https://testnet.binance.vision/api/v3';
  static Map<String, String> headers = {};
  static GetAccountCall getAccountCall = GetAccountCall();
}

class GetAccountCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    int? timestamp,
    String? signature = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getAccount',
      apiUrl: '${BinanceGroup.baseUrl}/account',
      callType: ApiCallType.GET,
      headers: {
        ...BinanceGroup.headers,
        'X-MBX-APIKEY': '${apiKey}',
      },
      params: {
        'recvWindow': 60000,
        'timestamp': timestamp,
        'signature': signature,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End binance Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
