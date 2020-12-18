import 'dart:convert';

class AsSeenOnsResult {
  AsSeenOnsResult({
    this.asSeenOns,
  });

  List<AsSeenOn> asSeenOns;

  factory AsSeenOnsResult.fromJson(Map<String, dynamic> json) =>
      AsSeenOnsResult(
        asSeenOns: List<AsSeenOn>.from(
            json["asSeenOns"].map((x) => AsSeenOn.fromJson(x))),
      );
}

class AsSeenOn {
  AsSeenOn({
    this.id,
    this.photoUrl,
    this.linkUrl,
    this.name,
  });

  int id;
  String photoUrl;
  String linkUrl;
  String name;

  factory AsSeenOn.fromJson(Map<String, dynamic> json) => AsSeenOn(
        id: json["id"],
        photoUrl: json["photo_url"],
        linkUrl: json["link_url"],
        name: json["name"],
      );
}

List<AsSeenOn> getAsSeenOns(String json) {
  if (json == null) {
    return [];
  }

  final dynamic parsed = jsonDecode(json);
  final AsSeenOnsResult asSeenOnsResult = AsSeenOnsResult.fromJson(parsed);
  return asSeenOnsResult.asSeenOns;
}
