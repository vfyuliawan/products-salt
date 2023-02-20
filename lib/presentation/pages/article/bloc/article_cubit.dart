import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/repository/article/article_repository.dart';
import 'package:untitled/presentation/pages/article/bloc/article_state.dart';

class ArticleCubit extends Cubit<ArticleState> {
  final ArticleRepository repository;

  ArticleCubit(this.repository) : super(ArticleInitState());

  Future<void> fetchArticle(String country) async {
    print("FETCH ARTICLE");
    emit(ArticleLoading());

    final response = await repository.fetchArticles(country);

    if (response is ResultSuccess) {
      emit(ArticleLoaded((response as ResultSuccess).data));
    } else {
      emit(ArticleError(error: "Error"));
    }

    // emit(ArticleLoading());
  }
}
