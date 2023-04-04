import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/request/register_dd/register_request_dd.dart';

class RegisterRemoteServiceDD {
  Client client = Client();

  Future<Response> submitRequest(
      AuthenticationHeaderRequest header, RegisterRequestDD request) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_DD,
        BaseConfig.BASE_PATH_DD + BaseConfig.BASE_REGISTER_DD);
    return client.post(
      url,
      body: request.toJson(),
      headers: header.toHeader(),
    );
  }
}
