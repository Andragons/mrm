class MovieEmotion {
  final int id;
  final String emotion;
  final String movieTitle;
  final DateTime timestamp;

  MovieEmotion({
    required this.id,
    required this.emotion,
    required this.movieTitle,
    required this.timestamp,
  });

  factory MovieEmotion.fromJson(Map<String, dynamic> json) {
    return MovieEmotion(
      id: json['id'],
      emotion: json['emotion'],
      movieTitle: json['movie_title'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
