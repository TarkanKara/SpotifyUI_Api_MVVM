import 'dart:convert';

GetSeveralEpisodes getSeveralEpisodesFromJson(String str) =>
    GetSeveralEpisodes.fromJson(json.decode(str));

String getSeveralEpisodesToJson(GetSeveralEpisodes data) =>
    json.encode(data.toJson());

class GetSeveralEpisodes {
  GetSeveralEpisodes({
    this.episodes,
  });

  List<Episode>? episodes;

  factory GetSeveralEpisodes.fromJson(Map<String, dynamic> json) =>
      GetSeveralEpisodes(
        episodes: List<Episode>.from(
            json["episodes"].map((x) => Episode.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "episodes": List<dynamic>.from(episodes!.map((x) => x.toJson())),
      };
}

class Episode {
  Episode({
    this.audioPreviewUrl,
    this.description,
    this.durationMs,
    this.explicit,
    this.externalUrls,
    this.href,
    this.htmlDescription,
    this.id,
    this.images,
    this.isExternallyHosted,
    this.isPlayable,
    this.language,
    this.languages,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.resumePoint,
    this.show,
    this.type,
    this.uri,
  });

  String? audioPreviewUrl;
  String? description;
  int? durationMs;
  bool? explicit;
  ExternalUrls? externalUrls;
  String? href;
  String? htmlDescription;
  String? id;
  List<Image>? images;
  bool? isExternallyHosted;
  bool? isPlayable;
  String? language;
  List<String>? languages;
  String? name;
  DateTime? releaseDate;
  String? releaseDatePrecision;
  ResumePoint? resumePoint;
  Show? show;
  String? type;
  String? uri;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        audioPreviewUrl: json["audio_preview_url"],
        description: json["description"],
        durationMs: json["duration_ms"],
        explicit: json["explicit"],
        externalUrls: ExternalUrls.fromJson(json["external_urls"]),
        href: json["href"],
        htmlDescription: json["html_description"],
        id: json["id"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        isExternallyHosted: json["is_externally_hosted"],
        isPlayable: json["is_playable"],
        language: json["language"],
        languages: List<String>.from(json["languages"].map((x) => x)),
        name: json["name"],
        releaseDate: DateTime.parse(json["release_date"]),
        releaseDatePrecision: json["release_date_precision"],
        resumePoint: ResumePoint.fromJson(json["resume_point"]),
        show: Show.fromJson(json["show"]),
        type: json["type"],
        uri: json["uri"],
      );

  Map<String, dynamic> toJson() => {
        "audio_preview_url": audioPreviewUrl,
        "description": description,
        "duration_ms": durationMs,
        "explicit": explicit,
        "external_urls": externalUrls!.toJson(),
        "href": href,
        "html_description": htmlDescription,
        "id": id,
        "images": List<dynamic>.from(images!.map((x) => x.toJson())),
        "is_externally_hosted": isExternallyHosted,
        "is_playable": isPlayable,
        "language": language,
        "languages": List<dynamic>.from(languages!.map((x) => x)),
        "name": name,
        "release_date":
            "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "release_date_precision": releaseDatePrecision,
        "resume_point": resumePoint!.toJson(),
        "show": show!.toJson(),
        "type": type,
        "uri": uri,
      };
}

class ExternalUrls {
  ExternalUrls({
    this.spotify,
  });

  String? spotify;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) => ExternalUrls(
        spotify: json["spotify"],
      );

  Map<String, dynamic> toJson() => {
        "spotify": spotify,
      };
}

class Image {
  Image({
    this.height,
    this.url,
    this.width,
  });

  int? height;
  String? url;
  int? width;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        height: json["height"],
        url: json["url"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "url": url,
        "width": width,
      };
}

class ResumePoint {
  ResumePoint({
    this.fullyPlayed,
    this.resumePositionMs,
  });

  bool? fullyPlayed;
  int? resumePositionMs;

  factory ResumePoint.fromJson(Map<String, dynamic> json) => ResumePoint(
        fullyPlayed: json["fully_played"],
        resumePositionMs: json["resume_position_ms"],
      );

  Map<String, dynamic> toJson() => {
        "fully_played": fullyPlayed,
        "resume_position_ms": resumePositionMs,
      };
}

class Show {
  Show({
    this.availableMarkets,
    this.copyrights,
    this.description,
    this.explicit,
    this.externalUrls,
    this.href,
    this.htmlDescription,
    this.id,
    this.images,
    this.isExternallyHosted,
    this.languages,
    this.mediaType,
    this.name,
    this.publisher,
    this.totalEpisodes,
    this.type,
    this.uri,
  });

  List<String>? availableMarkets;
  List<dynamic>? copyrights;
  String? description;
  bool? explicit;
  ExternalUrls? externalUrls;
  String? href;
  String? htmlDescription;
  String? id;
  List<Image>? images;
  bool? isExternallyHosted;
  List<String>? languages;
  String? mediaType;
  String? name;
  String? publisher;
  int? totalEpisodes;
  String? type;
  String? uri;

  factory Show.fromJson(Map<String, dynamic> json) => Show(
        availableMarkets:
            List<String>.from(json["available_markets"].map((x) => x)),
        copyrights: List<dynamic>.from(json["copyrights"].map((x) => x)),
        description: json["description"],
        explicit: json["explicit"],
        externalUrls: ExternalUrls.fromJson(json["external_urls"]),
        href: json["href"],
        htmlDescription: json["html_description"],
        id: json["id"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        isExternallyHosted: json["is_externally_hosted"],
        languages: List<String>.from(json["languages"].map((x) => x)),
        mediaType: json["media_type"],
        name: json["name"],
        publisher: json["publisher"],
        totalEpisodes: json["total_episodes"],
        type: json["type"],
        uri: json["uri"],
      );

  Map<String, dynamic> toJson() => {
        "available_markets":
            List<dynamic>.from(availableMarkets!.map((x) => x)),
        "copyrights": List<dynamic>.from(copyrights!.map((x) => x)),
        "description": description,
        "explicit": explicit,
        "external_urls": externalUrls!.toJson(),
        "href": href,
        "html_description": htmlDescription,
        "id": id,
        "images": List<dynamic>.from(images!.map((x) => x.toJson())),
        "is_externally_hosted": isExternallyHosted,
        "languages": List<dynamic>.from(languages!.map((x) => x)),
        "media_type": mediaType,
        "name": name,
        "publisher": publisher,
        "total_episodes": totalEpisodes,
        "type": type,
        "uri": uri,
      };
}
