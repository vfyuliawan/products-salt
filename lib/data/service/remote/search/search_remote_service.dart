import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/request/search/search_fetch_request.dart';

class SearchremoteService {
  Client client = Client();
  Future<Response> fetchSearch(
      AuthenticationHeaderRequest header, SearchFetchRequest request) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.FETCH_POINT,
      request.toQueries(),
    );
    return client.get(
      url,
      headers: header.toHeader(),
    );
  }
}
