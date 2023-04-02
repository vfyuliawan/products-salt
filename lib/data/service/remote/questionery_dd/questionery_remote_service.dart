import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/request/questioner_dd/questioner_dd_request.dart';
import 'package:untitled/domain/model/request/questionnaire_dd_new/questionnaire_submit_request.dart';

class QuestioneryRemoteService {
  Client client = Client();

  Future<Response> postQuestioner(AuthenticationHeaderRequest header,
      QuestionnaireSubmitRequest request) async {
    final url = Uri.https(BaseConfig.BASE_URL, BaseConfig.FETCH_PRODUCT);
    return client.post(
      url,
      body: request.toJson(),
      headers: header.toHeader(),
    );
  }
}
