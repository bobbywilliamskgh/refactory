import 'dart:convert';

class CoursesResult {
  CoursesResult({
    this.courses,
  });

  List<Course> courses;

  factory CoursesResult.fromJson(Map<String, dynamic> json) => CoursesResult(
        courses:
            List<Course>.from(json["courses"].map((x) => Course.fromJson(x))),
      );
}

class Course {
  Course({
    this.id,
    this.photoUrl,
    this.title,
    this.shortDescription,
    this.linkUrl,
    this.user,
  });

  int id;
  String photoUrl;
  String title;
  String shortDescription;
  String linkUrl;
  User user;

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        photoUrl: json["photo_url"],
        title: json["title"],
        shortDescription: json["short_description"],
        linkUrl: json["link_url"],
        user: User.fromJson(json["user"]),
      );
}

class User {
  User({
    this.userId,
    this.photoUrl,
    this.name,
  });

  int userId;
  String photoUrl;
  String name;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        photoUrl: json["photo_url"],
        name: json["name"],
      );
}

List<Course> getCourses(String json) {
  if (json == null) {
    return [];
  }

  final dynamic parsed = jsonDecode(json);
  final CoursesResult coursesResult = CoursesResult.fromJson(parsed);
  return coursesResult.courses;
}
