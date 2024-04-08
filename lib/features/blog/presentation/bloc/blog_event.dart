part of 'blog_bloc.dart';

@immutable
sealed class BlogEvent {}

final class BlogUpload extends BlogEvent {
  final File imageFile;
  final String title;
  final String content;
  final String posterId;
  final List<String> topics;

  BlogUpload({
    required this.imageFile,
    required this.title,
    required this.content,
    required this.posterId,
    required this.topics,
  });
}
