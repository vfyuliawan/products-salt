import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

class PointRemoteService {
  Client client = Client();
  Future<Response> fetchPoint(AuthenticationHeaderRequest header) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN, BaseConfig.FETCH_POINT);
    return client.get(
      url,
      headers: header.toHeader(),
    );
  }
}
