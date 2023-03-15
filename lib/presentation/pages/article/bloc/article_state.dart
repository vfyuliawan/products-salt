import 'package:equatable/equatable.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';

abstract class ArticleState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ArticleInitState extends ArticleState {}

class ArticleLoading extends ArticleState {}

class ArticleIsEmpty extends ArticleState {}

class ArticleLoaded extends ArticleState {
  final List<ArticleData> articles;
  ArticleLoaded(this.articles);
}

class ArticleError extends ArticleState {
  final String? error;
  ArticleError({this.error});
}
