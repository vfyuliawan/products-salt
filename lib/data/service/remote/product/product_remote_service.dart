import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/base/token_header_request.dart';

class ProductRemoteService {
  Client client = Client();
  Future<Response> fetchProduct(AuthenticationHeaderRequest header) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.FETCH_PRODUCT,
    );
    print(url);
    return client.get(
      url,
      // headers: header.toHeader(),
    );
  }

  Future<Response> fetchDetailProduct(
      AuthenticationHeaderRequest header, int id) async {
    final url = Uri.https(
        // "https://fakestoreapi.com/products/$id",
        BaseConfig.BASE_DOMAIN,
        'products/$id');
    print(url);
    return client.get(
      url,
      // headers: header.toHeader(),
    );
  }
}
