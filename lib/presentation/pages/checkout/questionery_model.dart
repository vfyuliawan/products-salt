// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuestioneryModel {
  String? questionCode;
  String? question;
  dynamic answer;
  QuestioneryModel(
    this.questionCode,
    this.question,
    this.answer,
  );

  static List<QuestioneryModel> questions() {
    List<QuestioneryModel> questions = [];
    questions.add(QuestioneryModel("1", "Merasa Sehat Pada Hari Ini?", "iya"));
    questions.add(QuestioneryModel("2", "Sedang minum antibiotik ??", "tidak"));
    questions.add(QuestioneryModel(
        "3", "Sedang minum obat lain untuk infeksi?", "tidak"));
    questions.add(QuestioneryModel(
        "4",
        "Apakah anda sedang minum aspirin atau obat yang mengandung aspirin ??",
        "tidak"));
    questions.add(QuestioneryModel("5",
        "Apakah anda mengalami sakit kepala dan demam bersamaan ?", "tidak"));
    questions.add(QuestioneryModel(
        "6",
        "Untuk pendonor darah wanita : apakah anda saat ini sedang hamil/menyusui ?",
        "tidak"));

    return questions;
  }

  QuestioneryModel copyWith({
    String? questionCode,
    String? question,
    dynamic answer,
  }) {
    return QuestioneryModel(
      questionCode ?? this.questionCode,
      question ?? this.question,
      answer ?? this.answer,
    );
  }
}
