import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api.dart';

part 'courses.g.dart';


@riverpod
Future<List<Course>> allCourses(AllCoursesRef ref) async {
  final response = await apiClient.apiCourseAllCoursersGet();
  if (!response.isSuccessful)
    throw Exception(response.error);
  if (response.body case final courses?)
    return courses;
  throw Exception('Failed to get products.');
}
