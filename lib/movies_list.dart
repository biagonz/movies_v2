// ignore_for_file: public_member_api_docs, sort_constructors_first
class MoviesList {
  double? averageRating;
  String? backdropPath;
  List<Results>? results;
  CreatedBy? createdBy;
  String? description;
  int? id;
  String? iso31661;
  String? iso6391;
  int? itemCount;
  String? name;
  ObjectIds? objectIds;
  int? page;
  String? posterPath;
  bool? public;
  int? revenue;
  int? runtime;
  String? sortBy;
  int? totalPages;
  int? totalResults;

  MoviesList(
      {this.averageRating,
      this.backdropPath,
      this.results,
      this.createdBy,
      this.description,
      this.id,
      this.iso31661,
      this.iso6391,
      this.itemCount,
      this.name,
      this.objectIds,
      this.page,
      this.posterPath,
      this.public,
      this.revenue,
      this.runtime,
      this.sortBy,
      this.totalPages,
      this.totalResults});

  MoviesList.fromJson(Map<String, dynamic> json) {
    averageRating = json['average_rating'];
    backdropPath = json['backdrop_path'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    createdBy = json['created_by'] != null
        ? new CreatedBy.fromJson(json['created_by'])
        : null;
    description = json['description'];
    id = json['id'];
    iso31661 = json['iso_3166_1'];
    iso6391 = json['iso_639_1'];
    itemCount = json['item_count'];
    name = json['name'];
    objectIds = json['object_ids'] != null
        ? new ObjectIds.fromJson(json['object_ids'])
        : null;
    page = json['page'];
    posterPath = json['poster_path'];
    public = json['public'];
    revenue = json['revenue'];
    runtime = json['runtime'];
    sortBy = json['sort_by'];
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['average_rating'] = averageRating;
    data['backdrop_path'] = backdropPath;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    if (createdBy != null) {
      data['created_by'] = createdBy!.toJson();
    }
    data['description'] = description;
    data['id'] = id;
    data['iso_3166_1'] = iso31661;
    data['iso_639_1'] = iso6391;
    data['item_count'] = itemCount;
    data['name'] = name;
    if (objectIds != null) {
      data['object_ids'] = objectIds!.toJson();
    }
    data['page'] = page;
    data['poster_path'] = posterPath;
    data['public'] = public;
    data['revenue'] = revenue;
    data['runtime'] = runtime;
    data['sort_by'] = sortBy;
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }

  @override
  String toString() {
    return 'MoviesList(averageRating: $averageRating, backdropPath: $backdropPath, results: $results, createdBy: $createdBy, description: $description, id: $id, iso31661: $iso31661, iso6391: $iso6391, itemCount: $itemCount, name: $name, objectIds: $objectIds, page: $page, posterPath: $posterPath, public: $public, revenue: $revenue, runtime: $runtime, sortBy: $sortBy, totalPages: $totalPages, totalResults: $totalResults)';
  }
}

class Results {
  String? backdropPath;
  int? id;
  String? title;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? mediaType;
  bool? adult;
  String? originalLanguage;
  List<int>? genreIds;
  double? popularity;
  String? releaseDate;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Results(
      {this.backdropPath,
      this.id,
      this.title,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.mediaType,
      this.adult,
      this.originalLanguage,
      this.genreIds,
      this.popularity,
      this.releaseDate,
      this.video,
      this.voteAverage,
      this.voteCount});

  Results.fromJson(Map<String, dynamic> json) {
    backdropPath = json['backdrop_path'];
    id = json['id'];
    title = json['title'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    mediaType = json['media_type'];
    adult = json['adult'];
    originalLanguage = json['original_language'];
    genreIds = json['genre_ids'].cast<int>();
    popularity = json['popularity'];
    releaseDate = json['release_date'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backdrop_path'] = backdropPath;
    data['id'] = id;
    data['title'] = title;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['poster_path'] = posterPath;
    data['media_type'] = mediaType;
    data['adult'] = adult;
    data['original_language'] = originalLanguage;
    data['genre_ids'] = genreIds;
    data['popularity'] = popularity;
    data['release_date'] = releaseDate;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }

  @override
  String toString() {
    return 'Results(backdropPath: $backdropPath, id: $id, title: $title, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, adult: $adult, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }
}

class CreatedBy {
  String? avatarPath;
  String? gravatarHash;
  String? id;
  String? name;
  String? username;

  CreatedBy(
      {this.avatarPath, this.gravatarHash, this.id, this.name, this.username});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    avatarPath = json['avatar_path'];
    gravatarHash = json['gravatar_hash'];
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avatar_path'] = avatarPath;
    data['gravatar_hash'] = gravatarHash;
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    return data;
  }
}

class ObjectIds {
  ObjectIds.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}
