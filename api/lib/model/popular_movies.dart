class PopularMovies {
  late int page;
  late int totalResult;
  late int totalPages;
  late List<Results> results;

  PopularMovies(
      {required this.page,
      required this.totalResult,
      required this.totalPages,
      required this.results});

  PopularMovies.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    totalResult = json['total_results'];
    totalPages = json['total_pages'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['total_results'] = this.totalResult;
    data['total_pages'] = this.totalPages;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  late double popularity;
  late int voteCount;
  late bool video;
  late String posterPath;
  late int id;
  late bool adult;
  late String backdropPath;
  late String originalLanguange;
  late String originalTitle;
  late List<int> genreIds;
  late String title;
  late double voteAverage;
  late String overview;
  late String relaseDate;

  Results(
      {required this.popularity,
      required this.voteCount,
      required this.video,
      required this.posterPath,
      required this.id,
      required this.adult,
      required this.backdropPath,
      required this.originalLanguange,
      required this.originalTitle,
      required this.genreIds,
      required this.title,
      required this.voteAverage,
      required this.overview,
      required this.relaseDate});

  Results.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    posterPath = json['poster_path'];
    id = json['id'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    originalLanguange = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'];
    title = json['title'];
    voteAverage = json['vote_average'];
    overview = json['overview'];
    relaseDate = json['release_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['popularity'] = this.popularity;
    data['vote_count'] = this.voteCount;
    data['video'] = this.posterPath;
    data['poster_path'] = this.posterPath;
    data['id'] = this.id;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['original_language'] = this.originalLanguange;
    data['original_title'] = this.originalTitle;
    data['genre_ids'] = this.genreIds;
    data['title'] = this.title;
    data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['release_date'] = this.relaseDate;
    return data;
  }
}
