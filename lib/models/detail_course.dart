import 'dart:convert';

class DetailCourseResult {
  DetailCourseResult({
    this.id,
    this.shortDescription,
    this.quistion,
    this.answer,
    this.quistionPhoto,
    this.materiCourse,
  });

  int id;
  String shortDescription;
  String quistion;
  String answer;
  String quistionPhoto;
  List<MateriCourse> materiCourse;

  factory DetailCourseResult.fromJson(Map<String, dynamic> json) =>
      DetailCourseResult(
        id: json["id"],
        shortDescription: json["short-description"],
        quistion: json["quistion"],
        answer: json["answer"],
        quistionPhoto: json["quistion-photo"],
        materiCourse: List<MateriCourse>.from(
            json["materi-course"].map((x) => MateriCourse.fromJson(x))),
      );
}

class MateriCourse {
  MateriCourse({
    this.id,
    this.section,
    this.data,
  });

  int id;
  String section;
  List<Datum> data;

  factory MateriCourse.fromJson(Map<String, dynamic> json) => MateriCourse(
        id: json["id"],
        section: json["section"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  Datum({
    this.id,
    this.title,
    this.url,
    this.timeIn,
  });

  int id;
  String title;
  String url;
  String timeIn;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        url: json["url"],
        timeIn: json["time-in"],
      );
}

DetailCourseResult getDetailCourse(String json) {
  if (json == null) {
    return null;
  }
  final dynamic parsed = jsonDecode(json);
  final DetailCourseResult detailCourse = DetailCourseResult.fromJson(parsed);
  return detailCourse;
}
