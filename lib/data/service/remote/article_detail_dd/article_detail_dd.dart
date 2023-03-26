import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

class ArticleDetailDDService {
  Client client = Client();
  Future<Response> fetchArticleDetaIL(
      AuthenticationHeaderRequest header, String uuid) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN, "/api/v1/article/$uuid");
    return client.get(
      url,
      headers: header.toHeader(),
    );
  }
}
