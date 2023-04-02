import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';
import 'package:untitled/domain/model/request/questionnaire_dd_new/questionnaire_submit_request.dart';

abstract class QuestionaireRepository {
  Future<ResultEntity> postQuestioner(
      AuthenticationHeaderRequest header, QuestionnaireSubmitRequest request);
}
