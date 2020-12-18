import 'dart:convert';

class PartnersResult {
  PartnersResult({
    this.partners,
  });

  List<Partner> partners;

  factory PartnersResult.fromJson(Map<String, dynamic> json) => PartnersResult(
        partners: List<Partner>.from(
            json["partners"].map((x) => Partner.fromJson(x))),
      );
}

class Partner {
  Partner({
    this.id,
    this.photoUrl,
    this.name,
  });

  int id;
  String photoUrl;
  String name;

  factory Partner.fromJson(Map<String, dynamic> json) => Partner(
        id: json["id"],
        photoUrl: json["photo_url"],
        name: json["name"],
      );
}

List<Partner> getPartners(String json) {
  if (json == null) {
    return [];
  }

  final dynamic parsed = jsonDecode(json);
  final PartnersResult partnersResult = PartnersResult.fromJson(parsed);
  return partnersResult.partners;
}
