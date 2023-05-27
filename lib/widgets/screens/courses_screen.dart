import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../api/api.swagger.dart';
import '../../extensions.dart';
import '../../providers.dart';
import '../../providers/courses.dart';
import '../../router.dart';
import '../animated_background.dart';
import '../product_card.dart';


@RoutePage()
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({ super.key, });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const AutoLeadingButton(),
      title: context.localizations.coursesScreen.widget,
    ),
    // backgroundColor: Colors.transparent,
    body: Stack(
      children: [
        const Positioned.fill(
          child: AnimatedBackground(),
        ),
        Positioned.fill(
          child: Consumer(
            builder: (context, ref, child) => ref.watch(allCoursesProvider).render(
              skipLoadingOnRefresh: false,
              (data) => ListView(
                children: [
                  for (final course in data)
                    CourseCard(course: course),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    course.header,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    course.description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.category, size: 14),
                Expanded(
                  child: RichText(
                      text: TextSpan(
                      children: [
                        TextSpan(
                          style: TextStyle(color: context.theme.colorScheme.onBackground),
                          text: 'Link: ',
                        ),
                        TextSpan(
                          text: course.link,
                          style: TextStyle(color: context.theme.colorScheme.primary),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => launchUrlString(course.link),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    ),
  );
}
