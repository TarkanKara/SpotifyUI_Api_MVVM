class GetSeveralEpisodes {
  List<Episodes>? episodes;

  GetSeveralEpisodes({this.episodes});

  GetSeveralEpisodes.fromJson(Map<String, dynamic> json) {
    if (json['episodes'] != null) {
      episodes = <Episodes>[];
      json['episodes'].forEach((v) {
        episodes!.add(Episodes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (episodes != null) {
      data['episodes'] = episodes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Episodes {
  String? audioPreviewUrl;
  String? description;
  int? durationMs;
  bool? explicit;
  ExternalUrls? externalUrls;
  String? href;
  String? htmlDescription;
  String? id;
  List<Images>? images;
  bool? isExternallyHosted;
  bool? isPlayable;
  String? language;
  List<String>? languages;
  String? name;
  String? releaseDate;
  String? releaseDatePrecision;
  ResumePoint? resumePoint;
  Show? show;
  String? type;
  String? uri;

  Episodes(
      {this.audioPreviewUrl,
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
      this.uri});

  Episodes.fromJson(Map<String, dynamic> json) {
    audioPreviewUrl = json['audio_preview_url'];
    description = json['description'];
    durationMs = json['duration_ms'];
    explicit = json['explicit'];
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    href = json['href'];
    htmlDescription = json['html_description'];
    id = json['id'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    isExternallyHosted = json['is_externally_hosted'];
    isPlayable = json['is_playable'];
    language = json['language'];
    languages = json['languages'].cast<String>();
    name = json['name'];
    releaseDate = json['release_date'];
    releaseDatePrecision = json['release_date_precision'];
    resumePoint = json['resume_point'] != null
        ? ResumePoint.fromJson(json['resume_point'])
        : null;
    show = json['show'] != null ? Show.fromJson(json['show']) : null;
    type = json['type'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['audio_preview_url'] = audioPreviewUrl;
    data['description'] = description;
    data['duration_ms'] = durationMs;
    data['explicit'] = explicit;
    if (externalUrls != null) {
      data['external_urls'] = externalUrls!.toJson();
    }
    data['href'] = href;
    data['html_description'] = htmlDescription;
    data['id'] = id;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['is_externally_hosted'] = isExternallyHosted;
    data['is_playable'] = isPlayable;
    data['language'] = language;
    data['languages'] = languages;
    data['name'] = name;
    data['release_date'] = releaseDate;
    data['release_date_precision'] = releaseDatePrecision;
    if (resumePoint != null) {
      data['resume_point'] = resumePoint!.toJson();
    }
    if (show != null) {
      data['show'] = show!.toJson();
    }
    data['type'] = type;
    data['uri'] = uri;
    return data;
  }
}

class ExternalUrls {
  String? spotify;

  ExternalUrls({this.spotify});

  ExternalUrls.fromJson(Map<String, dynamic> json) {
    spotify = json['spotify'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['spotify'] = spotify;
    return data;
  }
}

class Images {
  int? height;
  String? url;
  int? width;

  Images({this.height, this.url, this.width});

  Images.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    url = json['url'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['height'] = height;
    data['url'] = url;
    data['width'] = width;
    return data;
  }
}

class ResumePoint {
  bool? fullyPlayed;
  int? resumePositionMs;

  ResumePoint({this.fullyPlayed, this.resumePositionMs});

  ResumePoint.fromJson(Map<String, dynamic> json) {
    fullyPlayed = json['fully_played'];
    resumePositionMs = json['resume_position_ms'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fully_played'] = fullyPlayed;
    data['resume_position_ms'] = resumePositionMs;
    return data;
  }
}

class Show {
  List<String>? availableMarkets;
  List<void>? copyrights;
  String? description;
  bool? explicit;
  ExternalUrls? externalUrls;
  String? href;
  String? htmlDescription;
  String? id;
  List<Images>? images;
  bool? isExternallyHosted;
  List<String>? languages;
  String? mediaType;
  String? name;
  String? publisher;
  int? totalEpisodes;
  String? type;
  String? uri;

  Show(
      {this.availableMarkets,
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
      this.uri});

  Show.fromJson(Map<String, dynamic> json) {
    availableMarkets = json['available_markets'].cast<String>();
    if (json['copyrights'] != null) {
      copyrights = <Null>[];
      json['copyrights'].forEach((v) {
        copyrights!.add(v.fromJson(v));
      });
    }
    description = json['description'];
    explicit = json['explicit'];
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    href = json['href'];
    htmlDescription = json['html_description'];
    id = json['id'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    isExternallyHosted = json['is_externally_hosted'];
    languages = json['languages'].cast<String>();
    mediaType = json['media_type'];
    name = json['name'];
    publisher = json['publisher'];
    totalEpisodes = json['total_episodes'];
    type = json['type'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['available_markets'] = availableMarkets;
    if (copyrights != null) {
      data['copyrights'] = copyrights!.map((dynamic v) => v.toJson()).toList();
    }
    data['description'] = description;
    data['explicit'] = explicit;
    if (externalUrls != null) {
      data['external_urls'] = externalUrls!.toJson();
    }
    data['href'] = href;
    data['html_description'] = htmlDescription;
    data['id'] = id;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['is_externally_hosted'] = isExternallyHosted;
    data['languages'] = languages;
    data['media_type'] = mediaType;
    data['name'] = name;
    data['publisher'] = publisher;
    data['total_episodes'] = totalEpisodes;
    data['type'] = type;
    data['uri'] = uri;
    return data;
  }
}
