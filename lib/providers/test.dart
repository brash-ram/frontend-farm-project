import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test.g.dart';


@riverpod
Future<bool> test(TestRef ref) async => true;
