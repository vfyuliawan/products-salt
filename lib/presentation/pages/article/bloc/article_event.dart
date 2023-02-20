
import 'package:equatable/equatable.dart';

abstract class ArticleEvent extends Equatable {
  const ArticleEvent();
}

class FetchArticleEvent extends ArticleEvent {
  final String country;

  const FetchArticleEvent(this.country);

  @override
  List<Object?> get props => [country];
}