import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/request/pickup/trash_submit_request.dart';

class PickupRemoteService {
  Client client = Client();
  Future<Response> submitTrash(
      AuthenticationHeaderRequest header, TrashSubmitRequest request) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN, BaseConfig.SUBMIT_TRASH);
    return client.post(url, headers: header.toHeader(), body: request.toJson());
  }
}
