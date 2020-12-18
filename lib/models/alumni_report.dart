import 'dart:convert';

class AlumniReportsResult {
  AlumniReportsResult({
    this.alumniReports,
  });

  List<AlumniReport> alumniReports;

  factory AlumniReportsResult.fromJson(Map<String, dynamic> json) =>
      AlumniReportsResult(
        alumniReports: List<AlumniReport>.from(
            json["alumniReports"].map((x) => AlumniReport.fromJson(x))),
      );
}

class AlumniReport {
  AlumniReport({
    this.id,
    this.user,
    this.star,
    this.title,
    this.description,
  });

  int id;
  User user;
  int star;
  String title;
  String description;

  factory AlumniReport.fromJson(Map<String, dynamic> json) => AlumniReport(
        id: json["id"],
        user: User.fromJson(json["user"]),
        star: json["star"],
        title: json["title"],
        description: json["description"],
      );
}

class User {
  User({
    this.userId,
    this.photoUrl,
    this.name,
    this.from,
  });

  int userId;
  String photoUrl;
  String name;
  String from;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        photoUrl: json["photo_url"],
        name: json["name"],
        from: json["from"],
      );
}

List<AlumniReport> getAlumniReports(String json) {
  if (json == null) {
    return [];
  }

  final dynamic parsed = jsonDecode(json);
  final AlumniReportsResult alumniReportsResult =
      AlumniReportsResult.fromJson(parsed);
  return alumniReportsResult.alumniReports;
}
